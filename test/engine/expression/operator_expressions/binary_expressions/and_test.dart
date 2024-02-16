import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('And - execute', () {
    test('define "IsTrue": true and true', () {
      final isTrue = And(
        operand: [
          LiteralBoolean(value: true),
          LiteralBoolean(value: true),
        ],
      );
      expect(isTrue.execute({}), FhirBoolean(true));
    });
    test('define "IsFalse": true and false', () {
      final isFalse = And(
        operand: [
          LiteralBoolean(value: true),
          LiteralBoolean(value: false),
        ],
      );
      expect(isFalse.execute({}), FhirBoolean(false));
    });
    test('define "IsAlsoFalse": false and null', () {
      final isAlsoFalse = And(
        operand: [
          LiteralBoolean(value: false),
          LiteralNull(),
        ],
      );
      expect(isAlsoFalse.execute({}), FhirBoolean(false));
    });
    test('define "IsNull": true and null', () {
      final isNull = And(
        operand: [
          LiteralBoolean(value: true),
          LiteralNull(),
        ],
      );
      expect(isNull.execute({}), null);
    });
  });
}
