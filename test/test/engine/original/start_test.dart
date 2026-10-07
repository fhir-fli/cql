import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `start` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// The 2026-02-10 consolidation ("~75 unit tests into 8 spec-aligned files")
/// dropped these 2 cases; the value types are the cql engine's
/// (CqlBoolean for FhirBoolean, and so on), the titles and assertions are
/// as written.
void main() {
  group('Start', () {
    test('''define "StartOfInterval": start of Interval[1, 5] // 1''',
        () async {
      final interval = IntervalExpression(
        low: LiteralInteger(1),
        high: LiteralInteger(5),
      );
      final start = Start(operand: interval);
      final result = await start.execute({});
      expect(result, CqlInteger(1));
    });
    test('''define "StartIsNull": start of (null as Interval<Integer>)''',
        () async {
      final interval =
          As(operand: LiteralNull(), asType: QName.fromElmType('Interval'));
      final start = Start(operand: interval);
      final result = await start.execute({});
      expect(result, isNull);
    });
  });
}
