import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void overlapsBeforeTest() {
  group('OverlapsAfter', () {
    test(
        """define "OverlapsBeforeIsTrue": Interval[0, 4] overlaps before Interval[1, 4] // true""",
        () {
      final left = LiteralIntegerInterval(
          low: LiteralInteger(value: 0), high: LiteralInteger(value: 4));
      final right = LiteralIntegerInterval(
          low: LiteralInteger(value: 1), high: LiteralInteger(value: 4));
      final result = OverlapsBefore(operand: [left, right]);
      expect(result.execute({}), equals(FhirBoolean(true)));
    });
  });
}
