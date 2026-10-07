import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `matches` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Matches', () {
    test(r""""define "MatchesTrue": Matches('1,2three', '\d,\d\w+')""",
        () async {
      final argument = LiteralString('1,2three');
      final pattern = LiteralString(r'\d,\d\w+');
      final matches = Matches(operand: [argument, pattern]);
      expect(await matches.execute({}), CqlBoolean(true));
    });
    test(r""""define "MatchesFalse": Matches('1,2three', '\w+')""", () async {
      final argument = LiteralString('1,2three');
      final pattern = LiteralString(r'\w+');
      final matches = Matches(operand: [argument, pattern]);
      expect(await matches.execute({}), CqlBoolean(false));
    });
    test(""""define "MatchesIsNull": Matches('12three', null)""", () async {
      final argument = LiteralString('12three');
      final matches = Matches(operand: [argument, LiteralNull()]);
      expect(await matches.execute({}), null);
    });
  });
}
