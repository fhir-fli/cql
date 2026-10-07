import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlIncludedInIntervalOperatorPhraseVisitor
    extends CqlBaseVisitor<CqlExpression> {
  CqlIncludedInIntervalOperatorPhraseVisitor(super.library);

  @override
  CqlExpression visitIncludedInIntervalOperatorPhrase(
    IncludedInIntervalOperatorPhraseContext ctx, [
    CqlExpression? left,
    CqlExpression? right,
  ]) {
    printIf(ctx);
    final thisNode = getNextNode();
    var properly = false;
    String? duringIncludedIn;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'properly') {
          properly = true;
        } else if (child.text == 'during' || child.text == 'included in') {
          duringIncludedIn = child.text;
        }
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
          visitDateTimePrecisionSpecifier(child),
        );
      }
    }
    if (duringIncludedIn != null && left != null && right != null) {
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
      // CQL `during` maps to ELM `In`, while `included in` maps to `IncludedIn`
      if (duringIncludedIn == 'during') {
        return In(
          precision: dateTimePrecisionSpecifier,
          operand: [boundLeft, boundRight],
        );
      }
      if (isPointOperand(boundLeft)) {
        return properly
            ? ProperIn(
                precision: dateTimePrecisionSpecifier,
                operand: [boundLeft, boundRight],
              )
            : In(
                precision: dateTimePrecisionSpecifier,
                operand: [boundLeft, boundRight],
              );
      }
      if (properly) {
        return ProperIncludedIn(
          precision: dateTimePrecisionSpecifier,
          operand: [boundLeft, boundRight],
        );
      }
      return IncludedIn(
        precision: dateTimePrecisionSpecifier,
        operand: [boundLeft, boundRight],
      );
    }
    throw ArgumentError('$thisNode Invalid IncludedInIntervalOperatorPhrase');
  }
}
