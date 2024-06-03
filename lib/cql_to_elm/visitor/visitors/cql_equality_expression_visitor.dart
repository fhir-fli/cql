import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlEqualityExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlEqualityExpressionVisitor(super.library);

  @override
  CqlExpression visitEqualityExpression(EqualityExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? equalityOperator;
    List<CqlExpression> operand = [];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        } else if (result is String) {
          operand.add(ExpressionRef(name: result));
        }
      } else {
        equalityOperator = child.text;
      }
    }
    if (operand.length == 2) {
      if (equalityOperator == '=') {
        return Equal(operand: translateOperand(operand));
      } else if (equalityOperator == '!=') {
        return Not(operand: Equal(operand: translateOperand(operand)));
      } else if (equalityOperator == '~') {
        return Equivalent(operand: translateOperand(operand));
      } else if (equalityOperator == '!~') {
        return Not(operand: Equivalent(operand: translateOperand(operand)));
      }
    }
    throw ArgumentError('$thisNode Invalid EqualityExpression');
  }
}
