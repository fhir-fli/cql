import 'package:cql/src/internal.dart';

class CqlWithoutClauseVisitor extends CqlBaseVisitor<Without> {
  CqlWithoutClauseVisitor(super.library);

  @override
  Without visitWithoutClause(WithoutClauseContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    if (ctx.getChild<dynamic>(1) is AliasedQuerySourceContext) {
      final source = visitAliasedQuerySource(
        ctx.getChild<dynamic>(1)! as AliasedQuerySourceContext,
      );
      // Add the Without alias (typed when inferable) to the current query
      // scope so suchThat can see it.
      final model = currentModel;
      final sourceExpr = source.expression;
      CqlBaseVisitor.addAliasToCurrentScope(
        source.alias,
        model != null ? inferSourceElement(sourceExpr, model) : null,
      );
      final suchThat = ctx.getChild<dynamic>(3) == null
          ? null
          : byContext(ctx.getChild<dynamic>(3)!);
      return Without(
        type: 'Without',
        alias: source.alias,
        expression: source.expression,
        suchThat: suchThat is CqlExpression ? suchThat : null,
      );
    }
    throw ArgumentError('$thisNode Invalid WithoutClause');
  }
}
