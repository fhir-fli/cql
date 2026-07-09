import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlAggregateExpressionTermVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlAggregateExpressionTermVisitor(super.library);

  @override
  CqlExpression visitAggregateExpressionTerm(
    AggregateExpressionTermContext ctx,
  ) {
    printIf(ctx);
    final thisNode = getNextNode();
    var distinct = false;
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        distinct = (child.text == 'distinct');
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          expression = result;
        }
      }
    }
    if (expression != null) {
      return distinct
          ? Distinct(operand: expression)
          : Flatten(operand: expression);
    }
    throw ArgumentError('$thisNode Invalid AggregateExpressionTerm');
  }
}
