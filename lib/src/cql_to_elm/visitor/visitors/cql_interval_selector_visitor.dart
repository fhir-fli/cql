import 'package:cql/src/internal.dart';

class CqlIntervalSelectorVisitor extends CqlBaseVisitor<IntervalExpression> {
  CqlIntervalSelectorVisitor(super.library);

  @override
  IntervalExpression visitIntervalSelector(IntervalSelectorContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    CqlExpression? low;
    CqlExpression? high;
    var lowClosed = true;
    var highClosed = true;

    if (ctx.childCount == 6) {
      lowClosed = ctx.getChild<dynamic>(1)?.text != '(';
      highClosed = ctx.getChild<dynamic>(5)?.text != ')';
      final child2 = ctx.getChild<dynamic>(2);
      final child5 = ctx.getChild<dynamic>(4);
      if (child2 != null) {
        final result = byContext(child2);
        if (result is CqlExpression) {
          low = result;
        }
      }
      if (child5 != null) {
        final result = byContext(child5);
        if (result is CqlExpression) {
          high = result;
        }
      }
      return IntervalExpression(
        low: low,
        high: high,
        lowClosed: lowClosed,
        highClosed: highClosed,
      );
    } else {
      throw ArgumentError('$thisNode Invalid IntervalSelector');
    }
  }
}
