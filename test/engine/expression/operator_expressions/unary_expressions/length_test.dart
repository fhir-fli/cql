import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void lengthTest() {
  group('Length', () {
    test("""define "Length14": Length('ABCDE') // 5""", () {
      final input = LiteralString(value: 'ABCDE');
      final output = Length(operand: input);
      expect(output.execute({}), equals(FhirInteger(5)));
    });
    test("""define "LengthIsNull": Length(null as String) // null""", () {
      final input = As(resultTypeName: 'String', operand: LiteralNull());
      final output = Length(operand: input);
      expect(output.execute({}), equals(null));
    });
  });
}
