import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `max_value` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('MaxValue', () {
    test('''define "IntegerMaximum": maximum Integer // 2147483647''',
        () async {
      final valueType = QName.parse('Integer');
      final maxValue = MaxValue(valueType: valueType);
      expect(await maxValue.execute({}), equals(CqlInteger(2147483647)));
    });
    test('''define "LongMaximum": maximum Long // 9223372036854775807''',
        () async {
      final valueType = QName.parse('Long');
      final maxValue = MaxValue(valueType: valueType);
      expect(
        await maxValue.execute({}),
        equals(CqlLong.fromString('9223372036854775807')),
      );
    });
    test(
        '''define "DateTimeMaximum": maximum DateTime // @9999-12-31T23:59:59.999''',
        () async {
      final valueType = QName.parse('DateTime');
      final maxValue = MaxValue(valueType: valueType);
      expect(
        await maxValue.execute({}),
        equals(CqlDateTime.fromString('9999-12-31T23:59:59.999')),
      );
    });
  });
}
