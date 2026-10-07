import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `difference_between` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 2 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('DifferenceBetween', () {
    test(
        '''define "DifferenceInMonths": months between @2012-01-01 and @2012-02-01 // 1''',
        () async {
      final low = LiteralDate('2012-01-01');
      final high = LiteralDate('2012-02-01');
      final duration = DifferenceBetween(
        precision: CqlDateTimePrecision.month,
        operand: [low, high],
      );
      expect(await duration.execute({}), CqlInteger(1));
    });
    test('''define "DifferenceIsNull": months between @2012-01-01 and null''',
        () async {
      final low = LiteralDate('2012-01-01');
      final high = LiteralNull();
      final duration = DifferenceBetween(
        precision: CqlDateTimePrecision.month,
        operand: [low, high],
      );
      expect(await duration.execute({}), null);
    });
  });
}
