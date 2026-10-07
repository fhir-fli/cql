import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlAndExpressionVisitor extends CqlBaseVisitor<And> {
  CqlAndExpressionVisitor(super.library);

  @override
  And visitAndExpression(AndExpressionContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    final operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (operand.length == 2) {
      // The operator's parameter type: `null and null` is typed Boolean on
      // both sides in the reference (CqlLogicalOperatorsTest).
      return And(
        operand: typeNullOperands(
          operand,
          expected: QName.fromElmType('Boolean'),
        ),
      );
    }
    throw CqlException(
      message: '$thisNode Invalid number of arguments for And operator',
    );
  }
}
