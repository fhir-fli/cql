import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlImpliesExpressionVisitor extends CqlBaseVisitor<dynamic> {
  CqlImpliesExpressionVisitor(super.library);

  @override
  dynamic visitImpliesExpression(ImpliesExpressionContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    final operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result is CqlExpression) {
        operand.add(result);
      }
    }
    if (operand.length == 2) {
      return Implies(operand: operand);
    }
    throw ArgumentError('$thisNode Invalid ImpliesExpression');
  }
}
