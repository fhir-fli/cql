import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `round` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Round', () {
    test('''define "IntegerRound": Round(1) // 1''', () async {
      final input = LiteralDecimal(1);
      final result = Round(operand: input);
      expect(await result.execute({}), CqlDecimal(1));
    });
    test('''define "DecimalRound": Round(3.14159, 3) // 3.142''', () async {
      final input = LiteralDecimal(3.14159);
      final precision = LiteralInteger(3);
      final result = Round(operand: input, precision: precision);
      expect(await result.execute({}), CqlDecimal(3.142));
    });
    test('''define "RoundIsNull": Round(null)''', () async {
      final input = LiteralNull();
      final result = Round(operand: input);
      expect(await result.execute({}), isNull);
    });
  });
}
