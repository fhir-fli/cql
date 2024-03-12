import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EndsWith', () {
    test("""define "EndsWithIsTrue": EndsWith('ABC', 'C') // true""", () {
      final argument = LiteralString(value: 'ABC');
      final suffix = LiteralString(value: 'C');
      final endsWith = EndsWith(operand: [argument, suffix]);
      final result = endsWith.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "EndsWithIsFalse": EndsWith('ABC', 'Z') // false""", () {
      final argument = LiteralString(value: 'ABC');
      final suffix = LiteralString(value: 'Z');
      final endsWith = EndsWith(operand: [argument, suffix]);
      final result = endsWith.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "EndsWithIsNull": EndsWith('ABC', null) // null""", () {
      final argument = LiteralString(value: 'ABC');
      final endsWith = EndsWith(operand: [argument, LiteralNull()]);
      final result = endsWith.execute({});
      expect(result, equals(null));
    });
  });
}
