import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void overlapsTest() {
  group('Overlaps', () {
    test(
        """define "OverlapsIsTrue": Interval[0, 4] overlaps Interval[1, 4] // true""",
        () {
      final left = LiteralIntegerInterval(
          low: LiteralInteger(value: 0), high: LiteralInteger(value: 4));
      final right = LiteralIntegerInterval(
          low: LiteralInteger(value: 1), high: LiteralInteger(value: 4));
      final result = Overlaps(operand: [left, right]);
      expect(result.execute({}), equals(FhirBoolean(true)));
    });
    test(
        """define "OverlapsIsNull": Interval[6, 10] overlaps (null as Interval<Integer>) // null""",
        () {
      final left = LiteralIntegerInterval(
          low: LiteralInteger(value: 6), high: LiteralInteger(value: 10));
      final right =
          As(operand: LiteralNull(), resultTypeName: 'Interval<Integer>');
      final result = Overlaps(operand: [left, right]);
      expect(result.execute({}), equals(null));
    });
  });
}
