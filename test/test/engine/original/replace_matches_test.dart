import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `replace_matches` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('ReplaceMatches', () {
    test(
        """define "ReplaceMatchesFound": ReplaceMatches('ABCDE', 'C', 'XYZ') // 'ABXYZDE'""",
        () async {
      final argument = LiteralString('ABCDE');
      final pattern = LiteralString('C');
      final substitution = LiteralString('XYZ');
      final result = ReplaceMatches(
        operand: [argument, pattern, substitution],
        localId: 'ReplaceMatchesFound',
      );
      // A System String (every string operator answers CqlString, 2026-10-06).
      expect(await result.execute({}), CqlString('ABXYZDE'));
    });
    test(
        """define "ReplaceMatchesNotFound": ReplaceMatches('ABCDE', 'XYZ', '123') // 'ABCDE'""",
        () async {
      final argument = LiteralString('ABCDE');
      final pattern = LiteralString('XYZ');
      final substitution = LiteralString('123');
      final result = ReplaceMatches(
        operand: [argument, pattern, substitution],
        localId: 'ReplaceMatchesNotFound',
      );
      expect(await result.execute({}), CqlString('ABCDE'));
    });
    test(
        """define "ReplaceMatchesIsNull": ReplaceMatches('ABCDE', 'C', null) // null""",
        () async {
      final argument = LiteralString('ABCDE');
      final pattern = LiteralString('C');
      final substitution = LiteralNull();
      final result = ReplaceMatches(
        operand: [argument, pattern, substitution],
        localId: 'ReplaceMatchesIsNull',
      );
      expect(await result.execute({}), null);
    });
  });
}
