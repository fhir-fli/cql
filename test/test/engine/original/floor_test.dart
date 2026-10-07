import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `floor` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 4 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('floor', () {
    test('''define "IntegerFloor": Floor(1) // 1''', () async {
      final input = LiteralInteger(1);
      final result = Floor(operand: input);
      expect(await result.execute({}), equals(CqlInteger(1)));
    });
    test('''define "DecimalFloor": Floor(2.1) // 2''', () async {
      final input = LiteralDecimal(2.1);
      final result = Floor(operand: input);
      expect(await result.execute({}), equals(CqlInteger(2)));
    });
    test('''define "DecimalFloor": Floor(-2.1) // -3''', () async {
      final input = LiteralDecimal(-2.1);
      final result = Floor(operand: input);
      expect(await result.execute({}), equals(CqlInteger(-3)));
    });
    test('''define "QuantityFloorIsNull": Floor(null as Decimal)''', () async {
      final input = LiteralNull();
      final result = Floor(operand: input);
      expect(await result.execute({}), equals(null));
    });
  });
}
