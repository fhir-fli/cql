import 'package:cql/src/internal.dart';

class CqlTimeBoundaryExpressionTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlTimeBoundaryExpressionTermVisitor(super.library);

  @override
  dynamic visitTimeBoundaryExpressionTerm(
    TimeBoundaryExpressionTermContext ctx,
  ) {
    printIf(ctx);
    final thisNode = getNextNode();
    if (ctx.childCount == 3) {
      final expression = byContext(ctx.children![2]) as CqlExpression;
      if (ctx.children![0].text == 'start') {
        return Start(operand: expression);
      } else if (ctx.children![0].text == 'end') {
        return End(operand: expression);
      }
    }
    throw ArgumentError('$thisNode Invalid TimeBoundaryExpressionTerm');
  }
}
