import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `min_value` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// The 2026-02-10 consolidation ("~75 unit tests into 8 spec-aligned files")
/// dropped these 3 cases; the value types are the cql engine's
/// (CqlBoolean for FhirBoolean, and so on), the titles and assertions are
/// as written.
void main() {
  group('MinValue', () {
    test('''define "IntegerMinimum": minimum Integer // -2147483648''',
        () async {
      final valueType = QName.parse('Integer');
      final minValue = MinValue(valueType: valueType);
      expect(await minValue.execute({}), equals(CqlInteger(-2147483648)));
    });
    test('''define "LongMinimum": minimum Long // -9223372036854775808''',
        () async {
      final valueType = QName.parse('Long');
      final minValue = MinValue(valueType: valueType);
      expect(
        await minValue.execute({}),
        equals(CqlLong.fromString('-9223372036854775808')),
      );
    });
    test(
        '''define "DateTimeMinimum": minimum DateTime // @0001-01-01T00:00:00.000''',
        () async {
      final valueType = QName.parse('DateTime');
      final minValue = MinValue(valueType: valueType);
      final minValueExecute = await minValue.execute({});
      final fromString = CqlDateTime.fromString('0001-01-01T00:00:00.000');
      expect(minValueExecute, equals(fromString));
      // expect(await minValue.execute({}),
      //     equals(CqlDateTime.fromString('0001-01-01T00:00:00.000')));
    });
  });
}
