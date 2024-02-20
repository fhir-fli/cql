import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Or - execute', () {
    test('define "IsTrue": true or false', () {
      final isTrue = Or(
        operand: [
          LiteralBoolean(value: true),
          LiteralBoolean(value: false),
        ],
      );
      expect(isTrue.execute({}), FhirBoolean(true));
    });
    test('define "IsAlsoTrue": true or null', () {
      final isAlsoTrue = Or(
        operand: [
          LiteralBoolean(value: true),
          LiteralNull(),
        ],
      );
      expect(isAlsoTrue.execute({}), FhirBoolean(true));
    });
    test('define "IsFalse": false or false', () {
      final isTrueWithNull = Or(
        operand: [
          LiteralBoolean(value: false),
          LiteralBoolean(value: false),
        ],
      );
      expect(isTrueWithNull.execute({}), FhirBoolean(false));
    });
    test('define "IsNull": false or null', () {
      final isNull = Or(
        operand: [
          LiteralBoolean(value: false),
          LiteralNull(),
        ],
      );
      expect(isNull.execute({}), null);
    });
  });
}
