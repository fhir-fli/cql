import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `width` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Width', () {
    test('''define "Width": width of Interval[3, 7] // 4''', () async {
      final interval =
          IntervalExpression(low: LiteralInteger(3), high: LiteralInteger(7));
      final width = Width(operand: interval);
      final result = await width.execute({});
      expect(result, equals(CqlInteger(4)));
    });
    test(
        '''define "WidthIsNull": width of (null as Interval<Integer>) // null''',
        () async {
      final interval =
          As(operand: LiteralNull(), asType: QName.fromElmType('Interval'));
      final width = Width(operand: interval);
      final result = await width.execute({});
      expect(result, equals(null));
    });
    test('''define "NullInterval": width of Interval[0, null) //null''',
        () async {
      final interval = IntervalExpression(
        low: LiteralInteger(0),
        high: LiteralNull(),
        highClosed: false,
      );
      final width = Width(operand: interval);
      final result = await width.execute({});
      expect(result, equals(null));
    });
  });
}
