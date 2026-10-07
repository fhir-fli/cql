import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `truncate` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 4 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Truncate', () {
    test('''define "IntegerTruncate": Truncate(101) // 101''', () async {
      final input = LiteralInteger(101);
      final result = Truncate(operand: input);
      expect(await result.execute({}), equals(CqlInteger(101)));
    });
    test('''define "DecimalTruncate": Truncate(1.00000001) // 1''', () async {
      final input = LiteralDecimal(1.00000001);
      final result = Truncate(operand: input);
      expect(await result.execute({}), equals(CqlInteger(1)));
    });
    test('''define "DecimalTruncate": Truncate(1987.00000871) // 1''',
        () async {
      final input = LiteralDecimal(1987.00000871);
      final result = Truncate(operand: input);
      expect(await result.execute({}), equals(CqlInteger(1987)));
    });
    test('''define "TruncateIsNull": Truncate(null)''', () async {
      final input = LiteralNull();
      final result = Truncate(operand: input);
      expect(await result.execute({}), equals(null));
    });
  });
}
