import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlWithinIntervalOperatorPhraseVisitor
    extends CqlBaseVisitor<CqlExpression> {
  CqlWithinIntervalOperatorPhraseVisitor(super.library);

  @override
  CqlExpression visitWithinIntervalOperatorPhrase(
      WithinIntervalOperatorPhraseContext ctx,
      [CqlExpression? left,
      CqlExpression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? startsEndsOccurs;
    String? startEnd;
    // bool properly = false;
    LiteralQuantity? quantity;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (['starts', 'ends', 'occcurs'].contains(child.text)) {
          startsEndsOccurs = child.text;
        } else if (['start', 'end'].contains(child.text)) {
          startEnd = child.text;
        }
      } else if (child is QuantityContext) {
        quantity = visitQuantity(child);
      }
    }
    if (left != null && right != null && quantity != null) {
      final effectiveLeft = startsorEnds(left, startsEndsOccurs);
      final effectiveRight = startOrEnd(right, startEnd);
      return In(operand: [
        effectiveLeft,
        IntervalExpression(
          high: Add(operand: [effectiveRight, quantity]),
          low: Subtract(operand: [effectiveRight, quantity]),
        )
      ]);
    }
    throw ArgumentError('$thisNode Invalid WithinIntervalOperatorPhrase');
  }
}
