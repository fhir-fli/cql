import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlEndsIntervalOperatorPhraseVisitor extends CqlBaseVisitor<Ends> {
  CqlEndsIntervalOperatorPhraseVisitor(super.library);

  @override
  Ends visitEndsIntervalOperatorPhrase(
    EndsIntervalOperatorPhraseContext ctx, [
    CqlExpression? left,
    CqlExpression? right,
  ]) {
    printIf(ctx);
    final thisNode = getNextNode();
    CqlDateTimePrecision? dateTimePrecision;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecision = CqlDateTimePrecisionExtension.fromJson(
          visitDateTimePrecisionSpecifier(child),
        );
      }
    }
    if (left != null && right != null) {
      return Ends(precision: dateTimePrecision, operand: [left, right]);
    }
    throw ArgumentError('$thisNode invalid EndsIntervalOperatorPhrase');
  }
}
