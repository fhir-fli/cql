import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void meetsAfterTest() {
  group('MeetsAfter', () {
    test(
        """define "MeetsAfterIsFalse": Interval[6, 10] meets after Interval[0, 7]""",
        () {
      final low1 = LiteralInteger(value: 6);
      final high1 = LiteralInteger(value: 10);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(value: 0);
      final high2 = LiteralInteger(value: 7);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final meetsBefore = MeetsAfter(operand: [interval1, interval2]);
      final result = meetsBefore.execute({});
      expect(result, FhirBoolean(false));
    });
  });
}
