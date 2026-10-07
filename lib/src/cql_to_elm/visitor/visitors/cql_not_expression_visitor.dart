import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlNotExpressionVisitor extends CqlBaseVisitor<Not> {
  CqlNotExpressionVisitor(super.library);

  @override
  Not visitNotExpression(NotExpressionContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          // `not null`: the operand is typed Boolean (CqlLogicalOperatorsTest).
          return Not(
            operand: typeNullOperands(
              [result],
              expected: QName.fromElmType('Boolean'),
            ).single,
          );
        }
      }
    }
    throw ArgumentError('$thisNode Invalid NotExpression');
  }
}
