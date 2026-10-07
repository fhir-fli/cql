import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `end` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 2 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('End', () {
    test('''define "EndOfInterval": end of Interval[1, 5] // 5''', () async {
      final interval =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(5));
      final end = End(operand: interval);
      final result = await end.execute({});
      expect(result, equals(CqlInteger(5)));
    });
    test('''define "EndIsNull": end of (null as Interval<Integer>)''',
        () async {
      final interval =
          As(operand: LiteralNull(), asType: QName.fromElmType('Interval'));
      final end = End(operand: interval);
      final result = await end.execute({});
      expect(result, equals(null));
    });
  });
}
