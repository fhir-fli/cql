import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `ceiling` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Ceiling', () {
    test('''define "IntegerCeiling": Ceiling(1) // 1''', () async {
      final input = LiteralInteger(1);
      final result = Ceiling(operand: input);
      expect(await result.execute({}), equals(CqlInteger(1)));
    });
    test('''define "DecimalCeiling": Ceiling(1.1) // 2''', () async {
      final input = LiteralDecimal(1.1);
      final result = Ceiling(operand: input);
      expect(await result.execute({}), equals(CqlInteger(2)));
    });
    test('''define "QuantityCeilingIsNull": Ceiling(null as Decimal)''',
        () async {
      final input = LiteralNull();
      final result = Ceiling(operand: input);
      expect(await result.execute({}), equals(null));
    });
  });
}
