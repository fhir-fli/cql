import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void positionOfTest() {
  group('PositionOf', () {
    test("""define "PositionOfFound": PositionOf('B', 'ABCDEDCBA') // 1""", () {
      final pattern = LiteralString(value: 'B');
      final argument = LiteralString(value: 'ABCDEDCBA');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(positionOf.execute({}), equals(FhirInteger(1)));
    });
    test("""define "PositionOfNotFound": PositionOf('Z', 'ABCDE') // -1""", () {
      final pattern = LiteralString(value: 'Z');
      final argument = LiteralString(value: 'ABCDE');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(positionOf.execute({}), equals(FhirInteger(-1)));
    });
    test("""define "PositionOfIsNull": PositionOf(null, 'ABCDE') // null""",
        () {
      final pattern = LiteralNull();
      final argument = LiteralString(value: 'ABCDE');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(positionOf.execute({}), equals(null));
    });
  });
}
