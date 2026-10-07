import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `position_of` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('PositionOf', () {
    test("""define "PositionOfFound": PositionOf('B', 'ABCDEDCBA') // 1""",
        () async {
      final pattern = LiteralString('B');
      final argument = LiteralString('ABCDEDCBA');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(await positionOf.execute({}), equals(CqlInteger(1)));
    });
    test("""define "PositionOfNotFound": PositionOf('Z', 'ABCDE') // -1""",
        () async {
      final pattern = LiteralString('Z');
      final argument = LiteralString('ABCDE');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(await positionOf.execute({}), equals(CqlInteger(-1)));
    });
    test("""define "PositionOfIsNull": PositionOf(null, 'ABCDE') // null""",
        () async {
      final pattern = LiteralNull();
      final argument = LiteralString('ABCDE');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(await positionOf.execute({}), equals(null));
    });
  });
}
