import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlIncludesIntervalOperatorPhraseVisitor
    extends CqlBaseVisitor<CqlExpression> {
  CqlIncludesIntervalOperatorPhraseVisitor(super.library);

  @override
  CqlExpression visitIncludesIntervalOperatorPhrase(
    IncludesIntervalOperatorPhraseContext ctx, [
    CqlExpression? left,
    CqlExpression? right,
  ]) {
    printIf(ctx);
    final thisNode = getNextNode();
    var properly = false;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    String? startEnd;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'properly') {
          properly = true;
        } else if (child.text == 'start' || child.text == 'end') {
          startEnd = child.text;
        }
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
          visitDateTimePrecisionSpecifier(child),
        );
      }
    }
    if (left != null && right != null) {
      // `{ 1, 2, 3 } includes {}`: an empty RIGHT operand takes the left's
      // element type through a query; an empty left operand stays bare
      // (`{} included in { 1, 2, 3 }`): measured over every inclusion and
      // set operator in the reference files, 2026-10-06. A null against a
      // typed list takes that list's type (`null includes { 2 }`).
      final leftElement = CqlBaseVisitor.elementTypeOf(systemTypeOf(left));
      final bound = typeNullOperands([
        left,
        CqlBaseVisitor.typeEmptyList(right, leftElement),
      ]);
      final boundLeft = bound[0];
      final boundRight = bound[1];
      if (startEnd != null) {
        final start = startEnd == 'start';
        final end = startEnd == 'end';
        if (start) {
          return Starts(
            precision: dateTimePrecisionSpecifier,
            operand: [boundLeft, boundRight],
          );
        } else if (end) {
          return Ends(
            precision: dateTimePrecisionSpecifier,
            operand: [boundLeft, boundRight],
          );
        }
      } else if (isPointOperand(boundRight)) {
        return properly
            ? ProperContains(
                precision: dateTimePrecisionSpecifier,
                operand: [boundLeft, boundRight],
              )
            : Contains(
                precision: dateTimePrecisionSpecifier,
                operand: [boundLeft, boundRight],
              );
      } else if (properly) {
        return ProperIncludes(
          precision: dateTimePrecisionSpecifier,
          operand: [boundLeft, boundRight],
        );
      } else {
        return Includes(
          precision: dateTimePrecisionSpecifier,
          operand: [boundLeft, boundRight],
        );
      }
    }
    throw ArgumentError('$thisNode Invalid IncludesIntervalOperatorPhrase');
  }
}
