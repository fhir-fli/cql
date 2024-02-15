import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Not Test', () {
    test('define "IsTrue": not false', () {
      final not = Not(operand: LiteralBoolean(value: false));
      expect(not.execute({}), FhirBoolean(true));
    });
    test('define "IsFalse": not true', () {
      final not = Not(operand: LiteralBoolean(value: true));
      expect(not.execute({}), FhirBoolean(false));
    });
    test('define "IsNull": not null', () {
      final not = Not(operand: LiteralNull());
      expect(not.execute({}), null);
    });
  });
}
