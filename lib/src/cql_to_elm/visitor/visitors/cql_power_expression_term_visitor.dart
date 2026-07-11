import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlPowerExpressionTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlPowerExpressionTermVisitor(super.library);

  @override
  dynamic visitPowerExpressionTerm(PowerExpressionTermContext ctx) {
    printIf(ctx);
    CqlExpression? left;
    CqlExpression? right;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        if (left == null) {
          left = byContext(child) as CqlExpression?;
        } else {
          right = byContext(child) as CqlExpression?;
        }
      }
    }
    if (left != null && right != null) {
      if (left is LiteralType && right is LiteralType) {
        switch (left) {
          case LiteralInteger _:
            if (right is LiteralInteger) {
              return Power(operand: [left, right]);
            } else if (right is LiteralLong) {
              return Power(operand: [ToLong(operand: left), right]);
            } else if (right is LiteralDecimal) {
              return Power(operand: [ToDecimal(operand: left), right]);
            }
          case LiteralLong _:
            if (right is LiteralInteger) {
              return Power(operand: [left, ToLong(operand: right)]);
            } else if (right is LiteralLong) {
              return Power(operand: [left, right]);
            } else if (right is LiteralDecimal) {
              return Power(operand: [ToDecimal(operand: left), right]);
            }
          case LiteralDecimal _:
            if (right is LiteralInteger || right is LiteralLong) {
              return Power(operand: [left, ToDecimal(operand: right)]);
            } else if (right is LiteralDecimal) {
              return Power(operand: [left, right]);
            }
          default:
            return Power(operand: [left, right]);
        }
      }
      return Power(operand: [left, right]);
    }
  }
}
