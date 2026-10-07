import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `last_position_of` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('LastPositionOf', () {
    test(
        """define "LastPositionOfFound": LastPositionOf('B', 'ABCDEDCBA') // 7""",
        () async {
      final pattern = LiteralString('B');
      final argument = LiteralString('ABCDEDCBA');
      final lastPositionOf = LastPositionOf(pattern: pattern, string: argument);
      expect(await lastPositionOf.execute({}), equals(CqlInteger(7)));
    });
    test(
        """define "LastPositionOfNotFound": LastPositionOf('XYZ', 'ABCDE') // -1""",
        () async {
      final pattern = LiteralString('XYZ');
      final argument = LiteralString('ABCDE');
      final lastPositionOf = LastPositionOf(pattern: pattern, string: argument);
      expect(await lastPositionOf.execute({}), equals(CqlInteger(-1)));
    });
    test(
        """define "LastPositionOfIsNull": LastPositionOf(null, 'ABCDE') // null""",
        () async {
      final pattern = LiteralNull();
      final argument = LiteralString('ABCDE');
      final lastPositionOf = LastPositionOf(pattern: pattern, string: argument);
      expect(await lastPositionOf.execute({}), equals(null));
    });
  });
}
