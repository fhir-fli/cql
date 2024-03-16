import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void intersectTest() {
  group('Intersect', () {
    test(
        """define "Intersect": Interval[1, 5] intersect Interval[3, 7] // Interval[3, 5]""",
        () {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(value: 1),
        lowClosed: LiteralBoolean(value: true),
        high: LiteralInteger(value: 5),
        highClosed: LiteralBoolean(value: true),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(value: 3),
        lowClosed: LiteralBoolean(value: true),
        high: LiteralInteger(value: 7),
        highClosed: LiteralBoolean(value: true),
      );
      final result = Intersect(operand: [left, right]);
      expect(
          result.execute({}),
          equals(IntervalType<FhirInteger>(
            low: FhirInteger(3),
            lowClosed: true,
            high: FhirInteger(5),
            highClosed: true,
          )));
    });

    test(
        """define "IntersectIsNull": Interval[3, 5] intersect (null as Interval<Integer>)""",
        () {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(value: 3),
        lowClosed: LiteralBoolean(value: true),
        high: LiteralInteger(value: 5),
        highClosed: LiteralBoolean(value: true),
      );
      final right =
          As(operand: LiteralNull(), resultTypeName: 'Interval<Integer>');
      final result = Intersect(operand: [left, right]);
      expect(result.execute({}), equals(null));
    });
  });
}
