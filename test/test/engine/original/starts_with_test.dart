import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `starts_with` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('StartsWith', () {
    test("""define "StartsWithIsTrue": StartsWith('ABCDE', 'ABC') // true""",
        () async {
      final argument = LiteralString('ABCDE');
      final prefix = LiteralString('ABC');
      final startsWith = StartsWith(operand: [argument, prefix]);
      final result = await startsWith.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test("""define "StartsWithIsFalse": StartsWith('ABCDE', 'XYZ') // false""",
        () async {
      final argument = LiteralString('ABCDE');
      final prefix = LiteralString('XYZ');
      final startsWith = StartsWith(operand: [argument, prefix]);
      final result = await startsWith.execute({});
      expect(result, equals(CqlBoolean(false)));
    });
    test("""define "StartsWithIsNull": StartsWith('ABCDE', null) // null""",
        () async {
      final argument = LiteralString('ABCDE');
      final startsWith = StartsWith(operand: [argument, LiteralNull()]);
      final result = await startsWith.execute({});
      expect(result, equals(null));
    });
  });
}
