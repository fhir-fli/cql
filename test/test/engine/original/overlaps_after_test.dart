import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `overlaps_after` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 1 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('OverlapsAfter', () {
    test(
        '''define "OverlapsAfterIsFalse": Interval[0, 4] overlaps after Interval[1, 4] // false''',
        () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(0),
        high: LiteralInteger(4),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(1),
        high: LiteralInteger(4),
      );
      final result = OverlapsAfter(operand: [left, right]);
      expect(await result.execute({}), equals(CqlBoolean(false)));
    });
  });
}
