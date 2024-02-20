import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Implies - execute', () {
    test('define "IsTrue": false implies false', () {
      final isTrue = Implies(
        operand: [
          LiteralBoolean(value: false),
          LiteralBoolean(value: false),
        ],
      );
      expect(isTrue.execute({}), FhirBoolean(true));
    });

    test('define "IsAlsoTrue": false implies null', () {
      final isAlsoTrue = Implies(
        operand: [
          LiteralBoolean(value: false),
          LiteralNull(),
        ],
      );
      expect(isAlsoTrue.execute({}), FhirBoolean(true));
    });

    test('define "IsFalse": true implies false', () {
      final isFalse = Implies(
        operand: [
          LiteralBoolean(value: true),
          LiteralBoolean(value: false),
        ],
      );
      expect(isFalse.execute({}), FhirBoolean(false));
    });

    test('define "IsNull": true implies null', () {
      final isNull = Implies(
        operand: [
          LiteralBoolean(value: true),
          LiteralNull(),
        ],
      );
      expect(isNull.execute({}), null);
    });
  });
}
