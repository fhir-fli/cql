import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `ends_with` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('EndsWith', () {
    test("""define "EndsWithIsTrue": EndsWith('ABC', 'C') // true""", () async {
      final argument = LiteralString('ABC');
      final suffix = LiteralString('C');
      final endsWith = EndsWith(operand: [argument, suffix]);
      final result = await endsWith.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test("""define "EndsWithIsFalse": EndsWith('ABC', 'Z') // false""",
        () async {
      final argument = LiteralString('ABC');
      final suffix = LiteralString('Z');
      final endsWith = EndsWith(operand: [argument, suffix]);
      final result = await endsWith.execute({});
      expect(result, equals(CqlBoolean(false)));
    });
    test("""define "EndsWithIsNull": EndsWith('ABC', null) // null""",
        () async {
      final argument = LiteralString('ABC');
      final endsWith = EndsWith(operand: [argument, LiteralNull()]);
      final result = await endsWith.execute({});
      expect(result, equals(null));
    });
  });
}
