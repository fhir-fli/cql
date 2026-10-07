import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `meets_before` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 1 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('MeetsBefore', () {
    test(
        '''define "MeetsBeforeIsTrue": Interval[-5, -1] meets before Interval[0, 5]''',
        () async {
      final low1 = LiteralInteger(-5);
      final high1 = LiteralInteger(-1);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(0);
      final high2 = LiteralInteger(5);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final meetsBefore = MeetsBefore(operand: [interval1, interval2]);
      final result = await meetsBefore.execute({});
      expect(result, CqlBoolean(true));
    });
  });
}
