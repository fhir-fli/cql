import 'package:cql/src/internal.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

/// CQL Greater: "For comparisons involving quantities, the dimensions of
/// each quantity must be the same ... Attempting to operate on quantities
/// with invalid units will result in a null." The catches in the ordering
/// and interval operators name ucum's UcumException for exactly that.
void main() {
  final cm = ValidatedQuantity.fromString("5 'cm'");
  final kg = ValidatedQuantity.fromString("2 'kg'");
  final m = ValidatedQuantity.fromString("0.1 'm'");

  test('> < >= <= on quantities of different dimensions are null', () {
    expect(Greater.greater(cm, kg), isNull);
    expect(Less.less(cm, kg), isNull);
    expect(GreaterOrEqual.greaterOrEqual(cm, kg), isNull);
    expect(LessOrEqual.lessOrEqual(cm, kg), isNull);
  });

  test('units of the same dimension convert and compare', () {
    expect(Greater.greater(m, cm), CqlBoolean(true)); // 10 cm > 5 cm
    expect(Less.less(cm, m), CqlBoolean(true));
  });

  test('after / before / same or before with an incomparable point are null',
      () {
    final ivl = CqlInterval<ValidatedQuantity>(low: kg, high: kg);
    expect(After.after(cm, ivl), isNull);
    expect(Before.before(cm, ivl), isNull);
    expect(SameOrBefore.sameOrBefore(ivl, cm, null), isNull);
    expect(After.after(ivl, cm), isNull);
    expect(After.after(ivl, ivl), CqlBoolean(false));
  });

  test('overlaps after / before with incomparable boundaries are null', () {
    final a = CqlInterval<ValidatedQuantity>(low: cm, high: cm);
    final b = CqlInterval<ValidatedQuantity>(low: kg, high: kg);
    expect(OverlapsAfter.overlapsAfter(a, b), isNull);
    expect(OverlapsBefore.overlapsBefore(a, b), isNull);
  });

  test('truncated divide whose quotient is not finite is null', () async {
    final result = await TruncatedDivide(
      operand: [LiteralDecimal(1e308), LiteralDecimal(1e-308)],
    ).execute({});
    expect(result, isNull);
    final ok = await TruncatedDivide(
      operand: [LiteralDecimal(7.5), LiteralDecimal(2)],
    ).execute({});
    expect((ok as CqlDecimal).valueNum, 3);
  });

  test('ToTime and ToDateTime answer null for a value they cannot read',
      () async {
    expect(await ToTime(operand: LiteralString('24:00')).execute({}), isNull);
    expect(
      await ToDateTime(operand: LiteralString('2023-02-29')).execute({}),
      isNull,
    );
  });
}
