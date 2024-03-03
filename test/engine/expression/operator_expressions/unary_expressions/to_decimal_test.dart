import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ToDecimal', () {
    test('''define "IsValid": ToDecimal('-0.1')''', () {
      final input = LiteralString(value: '-0.1');
      final result = ToDecimal(operand: input);
      final expected = FhirDecimal(-0.1);

      expect(result.execute({}), expected);
    });
    test('''define "IsValid": ToDecimal(true)''', () {
      final input = LiteralBoolean(value: true);
      final expected = FhirDecimal(1.0);
      final result = ToDecimal(operand: input);

      expect(result.execute({}), expected);
    });
    test('''define "IsNull": ToDecimal('+-0.1')''', () {
      final input = LiteralString(value: '+-0.1');
      final result = ToDecimal(operand: input);
      const expected = null;

      expect(result.execute({}), expected);
    });
  });
}
