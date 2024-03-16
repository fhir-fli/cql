import 'package:cql/engine/engine.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void overlapsAfterTest() {
  group('OverlapsAfter', () {
    test(
        """define "OverlapsAfterIsFalse": Interval[0, 4] overlaps after Interval[1, 4] // false""",
        () {
      final left = LiteralIntegerInterval(
          low: LiteralInteger(value: 0), high: LiteralInteger(value: 4));
      final right = LiteralIntegerInterval(
          low: LiteralInteger(value: 1), high: LiteralInteger(value: 4));
      final result = OverlapsAfter(operand: [left, right]);
      expect(result.execute({}), equals(FhirBoolean(false)));
    });
  });
}
