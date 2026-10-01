import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// The `meets` helpers absorb exactly one failure: a predecessor or
/// successor that falls outside years 1..9999, which CQL defines as null
/// ("If the result of the operation cannot be represented ... the result is
/// null", Predecessor / Successor). Anything else is a defect and surfaces.
void main() {
  test('predecessor of year 1 and successor of year 9999 are null', () {
    expect(Meets.safePredecessor(CqlDate.fromString('0001')), isNull);
    expect(Meets.safeSuccessor(CqlDate.fromString('9999')), isNull);
    expect(
      Meets.safePrecisionPredecessor(
        CqlDate.fromString('0001-01-01'),
        CqlDateTimePrecision.day,
      ),
      isNull,
    );
    expect(
      Meets.safePrecisionSuccessor(
        CqlDateTime.fromString('9999-12-31T23:59:59.999'),
        CqlDateTimePrecision.millisecond,
      ),
      isNull,
    );
  });

  test('an in-range value steps as usual', () {
    expect(
      (Meets.safePredecessor(CqlDate.fromString('2024-03-01')) as CqlDate)
          .valueString,
      '2024-02-29',
    );
    expect(
      (Meets.safePrecisionSuccessor(
        CqlDate.fromString('2024-02-28'),
        CqlDateTimePrecision.day,
      ) as CqlDate)
          .valueString,
      '2024-02-29',
    );
  });

  test('an unsupported operand type is a defect, not a null', () {
    expect(() => Meets.safePredecessor(Object()), throwsArgumentError);
    expect(() => Meets.safeSuccessor(Object()), throwsArgumentError);
  });

  test('interval meets at the edge of the calendar does not throw', () async {
    final left = IntervalExpression(
      low: LiteralDate('9998-01-01'),
      high: LiteralDate('9999-12-31'),
    );
    final right = IntervalExpression(
      low: LiteralDate('0001-01-01'),
      high: LiteralDate('0001-12-31'),
    );
    final result = await Meets(operand: [left, right]).execute({});
    expect(result, isNot(CqlBoolean(true)));
  });
}
