import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LastPositionOf', () {
    test(
        """define "LastPositionOfFound": LastPositionOf('B', 'ABCDEDCBA') // 7""",
        () {
      final pattern = LiteralString(value: 'B');
      final argument = LiteralString(value: 'ABCDEDCBA');
      final lastPositionOf = LastPositionOf(pattern: pattern, string: argument);
      expect(lastPositionOf.execute({}), equals(FhirInteger(7)));
    });
    test(
        """define "LastPositionOfNotFound": LastPositionOf('XYZ', 'ABCDE') // -1""",
        () {
      final pattern = LiteralString(value: 'XYZ');
      final argument = LiteralString(value: 'ABCDE');
      final lastPositionOf = LastPositionOf(pattern: pattern, string: argument);
      expect(lastPositionOf.execute({}), equals(FhirInteger(-1)));
    });
    test(
        """define "LastPositionOfIsNull": LastPositionOf(null, 'ABCDE') // null""",
        () {
      final pattern = LiteralNull();
      final argument = LiteralString(value: 'ABCDE');
      final lastPositionOf = LastPositionOf(pattern: pattern, string: argument);
      expect(lastPositionOf.execute({}), equals(null));
    });
  });
}