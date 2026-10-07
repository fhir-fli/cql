import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlQueryVisitor extends CqlBaseVisitor<Query> {
  CqlQueryVisitor(super.library);

  @override
  Query visitQuery(QueryContext ctx) {
    printIf(ctx);
    final source = <AliasedQuerySource>[];
    final let = <LetClause>[];
    final relationship = <RelationshipClause>[];
    CqlExpression? where;
    AggregateClause? aggregateClause;
    ReturnClause? returnClause;
    SortClause? sort;
    String? resultType;

    // First pass: collect source aliases (with the element type each alias
    // ranges over, inferred from its source expression) so they're available
    // for scope tracking during the rest of the query processing.
    final model = currentModel;
    final aliases = <String, String?>{};
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is SourceClauseContext) {
        source.addAll(visitSourceClause(child));
        for (final s in source) {
          aliases[s.alias] =
              model == null ? null : inferSourceElement(s.expression, model);
        }
      }
    }

    // Push aliases into scope before processing the rest of the query
    CqlBaseVisitor.pushQueryScope(aliases);
    try {
      for (final child in ctx.children ?? <ParseTree>[]) {
        if (child is SourceClauseContext) {
          // Already processed above
        } else if (child is LetClauseContext) {
          // visitLetClause registers each let identifier incrementally
          // so later let items can reference earlier ones.
          let.addAll(visitLetClause(child));
        } else if (child is QueryInclusionClauseContext) {
          // With/without register their own alias (and type) into the
          // current scope as they're visited.
          final rel = visitQueryInclusionClause(child) as RelationshipClause;
          relationship.add(rel);
          aliases.putIfAbsent(rel.alias, () => null);
        } else if (child is WhereClauseContext) {
          where = visitWhereClause(child);
        } else if (child is AggregateClauseContext) {
          aggregateClause = visitAggregateClause(child);
        } else if (child is ReturnClauseContext) {
          returnClause = visitReturnClause(child);
          // The query's result type, inferred while its aliases are still
          // in scope: a list of the return expression's type when a source
          // is a list (CQL Author's Guide, queries over a list yield a
          // list), else the return expression's type. An alias over this
          // query (Exercises08 `(… D return D.code) TestCode`) then ranges
          // over FHIR.CodeableConcept, and `D.code ~ TestCode` is a
          // comparison of two model values, written without conversion as
          // the reference does.
          if (model != null) {
            final returned = inferType(returnClause.expression, model);
            if (returned != null) {
              final overList = source.length > 1 ||
                  source.any(
                    (s) =>
                        inferType(s.expression, model)?.startsWith('List<') ??
                        false,
                  );
              resultType = overList && !returned.startsWith('List<')
                  ? 'List<$returned>'
                  : returned;
            }
          }
        } else if (child is SortClauseContext) {
          sort = visitSortClause(child);
        }
      }
    } finally {
      CqlBaseVisitor.popQueryScope();
    }

    final query = Query(
      source: source,
      let: let.isEmpty ? null : let,
      relationship: relationship.isEmpty ? null : relationship,
      where: where,
      returnClause: returnClause,
      sort: sort,
      aggregate: aggregateClause,
    );

    // When the return clause is FHIRHelpers.ToXxx(As(..., FHIR type)),
    // the reference translator splits this into a nested query:
    //   inner: original query with return = As(...)
    //   outer: X alias, return FHIRHelpers.ToXxx(X) with distinct: false
    return _maybeWrapReturnWithConversion(query)
      ..inferredResultType ??= resultType;
  }

  /// Detects when a query's return clause is a FHIRHelpers conversion wrapping
  /// an As cast to a FHIR type, and restructures into a nested query to match
  /// the reference translator's output.
  Query _maybeWrapReturnWithConversion(Query query) {
    if (query.returnClause == null) return query;
    final expr = query.returnClause!.expression;
    if (expr is! FunctionRef) return query;
    if (expr.libraryName != 'FHIRHelpers') return query;
    if (expr.operand == null || expr.operand!.length != 1) return query;
    if (expr.operand![0] is! As) return query;

    // The return clause is FHIRHelpers.ToXxx(As(..., FHIR type))
    // Restructure into nested query.
    final innerAs = expr.operand![0];
    final helperName = expr.name;

    // Inner query: same as original but return = As(...)
    final innerQuery = Query(
      source: query.source,
      let: query.let,
      relationship: query.relationship,
      where: query.where,
      returnClause: ReturnClause(expression: innerAs),
      sort: query.sort,
      aggregate: query.aggregate,
    );

    // Outer query: X alias wrapping inner query,
    // return FHIRHelpers.ToXxx(X) with distinct: false
    const outerAlias = 'X';
    return Query(
      source: [
        AliasedQuerySource(alias: outerAlias, expression: innerQuery),
      ],
      returnClause: ReturnClause(
        distinct: false,
        expression: FunctionRef(
          name: helperName,
          libraryName: 'FHIRHelpers',
          operand: [AliasRef(name: outerAlias)],
        ),
      ),
    );
  }

  /// The elements of [query] converted to their System type through an
  /// outer query `X`, when the return's known type is a model type with a
  /// declared conversion that no binding site owns: what the reference
  /// writes for an aggregate over `… return (T.value as Quantity)`
  /// (Exercises08: `Avg(…)` becomes Avg over `X` returning
  /// FHIRHelpers.ToQuantity(X)). A query whose elements stay model-typed
  /// (`return D.code` fed to a `~` comparison) is returned as is.
  static Query convertElementsForAggregate(Query query, Model? model) {
    final expr = query.returnClause?.expression;
    final type = expr?.knownResultType;
    if (model == null || expr == null || type == null) return query;
    if (type.startsWith('List<')) return query;
    final conversion = model.findConversionFrom(type);
    if (conversion == null ||
        CqlBaseVisitor.isBindingOwnedConversion(conversion.functionName)) {
      return query;
    }
    final dot = conversion.functionName.indexOf('.');
    if (dot <= 0) return query;
    const outerAlias = 'X';
    return Query(
      source: [AliasedQuerySource(alias: outerAlias, expression: query)],
      returnClause: ReturnClause(
        distinct: false,
        expression: FunctionRef(
          name: conversion.functionName.substring(dot + 1),
          libraryName: conversion.functionName.substring(0, dot),
          operand: [AliasRef(name: outerAlias)],
        ),
      ),
    );
  }
}
