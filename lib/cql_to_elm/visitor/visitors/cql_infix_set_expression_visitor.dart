import '../../../cql.dart';

class CqlInFixSetExpressionVisitor extends CqlBaseVisitor<NaryExpression> {
  CqlInFixSetExpressionVisitor(super.library);

  @override
  NaryExpression visitInFixSetExpression(InFixSetExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 3) {
      final left = byContext(ctx.getChild(0)!);
      final operator = ctx.getChild(1)!.text;
      final right = byContext(ctx.getChild(2)!);

      if (left != null &&
          left is CqlExpression &&
          right != null &&
          right is CqlExpression &&
          operator != null) {
        if (operator == '|' || operator == 'union') {
          return Union(operand: [left, right]);
        } else if (operator == 'intersect') {
          return Intersect(operand: [left, right]);
        } else if (operator == 'except') {
          return Except(operand: [left, right]);
        }
      }
    }
    throw ArgumentError('$thisNode Invalid InFixSetExpression');
  }
}
