import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `meets_after` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 1 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('MeetsAfter', () {
    test(
        '''define "MeetsAfterIsFalse": Interval[6, 10] meets after Interval[0, 7]''',
        () async {
      final low1 = LiteralInteger(6);
      final high1 = LiteralInteger(10);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(0);
      final high2 = LiteralInteger(7);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final meetsBefore = MeetsAfter(operand: [interval1, interval2]);
      final result = await meetsBefore.execute({});
      expect(result, CqlBoolean(false));
    });
  });
}
