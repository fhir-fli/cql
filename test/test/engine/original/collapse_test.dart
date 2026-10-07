import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `collapse` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 2 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('collapse', () {
    test(
        'define "Collapse1To9": collapse { Interval[1, 4], Interval[4, 8], Interval[7, 9] } // { Interval[1, 9] }',
        () async {
      final interval1 = IntervalExpression(
        low: LiteralInteger(1),
        high: LiteralInteger(4),
      );
      final interval2 = IntervalExpression(
        low: LiteralInteger(4),
        high: LiteralInteger(8),
      );
      final interval3 = IntervalExpression(
        low: LiteralInteger(7),
        high: LiteralInteger(9),
      );
      final list = ListExpression(element: [interval1, interval2, interval3]);
      final collapse = Collapse(operand: [list]);
      final result = await collapse.execute({});
      expect(result, [CqlInterval(low: CqlInteger(1), high: CqlInteger(9))]);
    });
    test('define "CollapseIsNull": collapse null', () async {
      final collapse = Collapse(operand: [LiteralNull()]);
      final result = await collapse.execute({});
      expect(result, null);
    });
  });
}
