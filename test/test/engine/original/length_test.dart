import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `length` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 2 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Length', () {
    test("""define "Length14": Length('ABCDE') // 5""", () async {
      final input = LiteralString('ABCDE');
      final output = Length(operand: input);
      expect(await output.execute({}), equals(CqlInteger(5)));
    });
    test('''define "LengthIsNull": Length(null as String) // null''', () async {
      final input = As(resultTypeName: 'String', operand: LiteralNull());
      final output = Length(operand: input);
      expect(await output.execute({}), equals(null));
    });
  });
}
