import 'package:fhir_cql/fhir_cql.dart';

class CqlWithClauseVisitor extends CqlBaseVisitor<With> {
  CqlWithClauseVisitor(super.library);

  @override
  With visitWithClause(WithClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.getChild(1) is AliasedQuerySourceContext) {
      final RelationshipClause source =
          visitAliasedQuerySource(ctx.getChild(1) as AliasedQuerySourceContext);
      // Add the With alias (typed when inferable) to the current query
      // scope so suchThat can see it.
      final model = currentModel;
      final sourceExpr = source.expression;
      CqlBaseVisitor.addAliasToCurrentScope(
        source.alias,
        model != null && sourceExpr != null
            ? inferSourceElementType(sourceExpr, model)
            : null,
      );
      final suchThat =
          ctx.getChild(3) == null ? null : byContext(ctx.getChild(3)!);
      return With(
          type: 'With',
          alias: source.alias,
          expression: source.expression,
          suchThat: suchThat is CqlExpression ? suchThat : null);
    }
    throw ArgumentError('$thisNode Invalid WithClause');
  }
}
