import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `truncate` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// The 2026-02-10 consolidation ("~75 unit tests into 8 spec-aligned files")
/// dropped these 1 cases; the value types are the cql engine's
/// (CqlBoolean for FhirBoolean, and so on), the titles and assertions are
/// as written.
void main() {
  group('Truncate', () {
    test('''define "TruncateIsNull": Truncate(null)''', () async {
      final input = LiteralNull();
      final result = Truncate(operand: input);
      expect(await result.execute({}), equals(null));
    });
  });
}
