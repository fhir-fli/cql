import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `starts` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// The 2026-02-10 consolidation ("~75 unit tests into 8 spec-aligned files")
/// dropped these 3 cases; the value types are the cql engine's
/// (CqlBoolean for FhirBoolean, and so on), the titles and assertions are
/// as written.
void main() {
  group('Starts', () {
    test('''define "StartsIsTrue": Interval[0, 5] starts Interval[0, 7]''',
        () async {
      final low1 = LiteralInteger(0);
      final high1 = LiteralInteger(5);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(0);
      final high2 = LiteralInteger(7);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final starts = Starts(operand: [interval1, interval2]);
      final result = await starts.execute({});
      expect(result, CqlBoolean(true));
    });
    test('''define "StartsIsFalse": Interval[0, 7] starts Interval[0, 6]''',
        () async {
      final low1 = LiteralInteger(0);
      final high1 = LiteralInteger(7);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(0);
      final high2 = LiteralInteger(6);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final starts = Starts(operand: [interval1, interval2]);
      final result = await starts.execute({});
      expect(result, CqlBoolean(false));
    });
    test('''define "StartsIsNull": Interval[1, 5] starts null''', () async {
      final low1 = LiteralInteger(0);
      final high1 = LiteralInteger(5);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final interval2 =
          As(operand: LiteralNull(), asType: QName.fromElmType('Interval'));
      final starts = Starts(operand: [interval1, interval2]);
      final result = await starts.execute({});
      expect(result, isNull);
    });
  });
}
