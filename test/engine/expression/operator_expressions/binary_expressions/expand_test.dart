import 'package:cql/engine/engine.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void expandTest() {
  group('expand', () {
    test('expand { Interval[@2018-01-01, @2018-01-04] } per day', () {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2018-01-01'),
        high: LiteralDate('2018-01-04'),
      );
      final list = ListExpression(element: [interval1]);
      final expand = Expand(operand: [list]);
      final result = expand.execute({});
      final interval2 = IntervalType(
          low: FhirDate('2018-01-01'), high: FhirDate('2018-01-01'));
      final interval3 = IntervalType(
          low: FhirDate('2018-01-02'), high: FhirDate('2018-01-02'));
      final interval4 = IntervalType(
          low: FhirDate('2018-01-03'), high: FhirDate('2018-01-03'));
      final interval5 = IntervalType(
          low: FhirDate('2018-01-04'), high: FhirDate('2018-01-04'));
      expect(result, [interval2, interval3, interval4, interval5]);
    });
    test('// expand { Interval[@T10:00, @T12:30] } per hour', () {
      final interval1 = LiteralIntegerInterval(
        low: LiteralInteger(1),
        high: LiteralInteger(10),
      );
      final expand = Expand(operand: [interval1]);
      final result = expand.execute({});
      expect(result, [
        FhirInteger(1),
        FhirInteger(2),
        FhirInteger(3),
        FhirInteger(4),
        FhirInteger(5),
        FhirInteger(6),
        FhirInteger(7),
        FhirInteger(8),
        FhirInteger(9),
        FhirInteger(10)
      ]);
    });
  });
}