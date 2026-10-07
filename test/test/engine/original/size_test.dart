import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `size` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Size', () {
    test(
        '''define "SizeTest": Size(Interval[3, 7]) // 5, i.e. the interval contains 5 points''',
        () async {
      final interval = IntervalExpression(
        low: LiteralInteger(3),
        high: LiteralInteger(7),
      );
      final size = Size(operand: interval);
      final result = await size.execute({});
      expect(result, equals(CqlInteger(5)));
    });
    test(
        '''define "SizeTestEquivalent": Size(Interval[3, 8)) // 5, i.e. the interval contains 5 points''',
        () async {
      final interval = IntervalExpression(
        low: LiteralInteger(3),
        highClosed: false,
        high: LiteralInteger(8),
      );
      final size = Size(operand: interval);
      final result = await size.execute({});
      expect(result, equals(CqlInteger(5)));
    });
    test('''define "SizeIsNull": Size(null as Interval<Integer>) // null''',
        () async {
      final size = Size(
        operand: As(
          operand: LiteralNull(),
          asType: QName.fromElmType('Interval'),
        ),
      );
      final result = await size.execute({});
      expect(result, equals(null));
    });
  });
}
