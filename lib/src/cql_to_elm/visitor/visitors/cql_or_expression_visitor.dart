import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlOrExpressionVisitor extends CqlBaseVisitor<BinaryExpression> {
  CqlOrExpressionVisitor(super.library);

  @override
  BinaryExpression visitOrExpression(OrExpressionContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    var orXor = true;
    final operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        orXor = (child.text == 'or');
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (operand.length == 2) {
      final typed = typeNullOperands(
        operand,
        expected: QName.fromElmType('Boolean'),
      );
      return orXor ? Or(operand: typed) : Xor(operand: typed);
    }
    throw ArgumentError('$thisNode Invalid OrExpression');
  }
}
