import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Xor', () {
    test('define "IsTrue": true xor false', () {
      final xor = Xor(
          operand: [LiteralBoolean(value: true), LiteralBoolean(value: false)]);
      expect(xor.execute({}), FhirBoolean(true));
    });
    test('define "IsAlsoTrue": false xor true', () {
      final xor = Xor(
          operand: [LiteralBoolean(value: false), LiteralBoolean(value: true)]);
      expect(xor.execute({}), FhirBoolean(true));
    });
    test('define "IsFalse": true xor true', () {
      final xor = Xor(
          operand: [LiteralBoolean(value: true), LiteralBoolean(value: true)]);
      expect(xor.execute({}), FhirBoolean(false));
    });
    test('define "IsNull": true xor null', () {
      final xor = Xor(operand: [LiteralBoolean(value: true), LiteralNull()]);
      expect(xor.execute({}), equals(null));
    });
  });
}
