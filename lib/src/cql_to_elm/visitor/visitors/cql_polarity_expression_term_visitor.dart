import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlPolarityExpressionTermVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlPolarityExpressionTermVisitor(super.library);

  @override
  CqlExpression visitPolarityExpressionTerm(PolarityExpressionTermContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    bool? isPositive;
    CqlExpression? expressionTerm;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        expressionTerm = byContext(child) as CqlExpression?;
      } else {
        isPositive = child.text == '+';
      }
    }
    if (expressionTerm != null && isPositive != null) {
      if (isPositive) {
        return expressionTerm;
      } else {
        return Negate(operand: expressionTerm);
      }
    }
    throw ArgumentError('$thisNode Invalid Polarity Expression');
  }
}
