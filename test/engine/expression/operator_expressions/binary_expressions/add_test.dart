import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void main() {
  group('Add Expression', () {
    test('define "IntegerAdd": 2 + 2 // 4', () {
      final add = Add(
        operand: [
          LiteralInteger(value: 2),
          LiteralInteger(value: 2),
        ],
      );
      expect(add.execute({}), FhirInteger(4));
    });
    test('define "IntegerAddIsNull": 2 + null', () {
      final add = Add(
        operand: [
          LiteralInteger(value: 2),
          NullExpression(valueType: QName.fromLocalPart('Null')),
        ],
      );
      expect(add.execute({}), null);
    });
    test('define "LongAdd": 25L + 5 // 30L', () {
      final add = Add(
        operand: [
          LiteralLong(value: BigInt.from(25)),
          LiteralInteger(value: 5),
        ],
      );
      expect(add.execute({}), FhirInteger64(30));
    });
    test('define "DecimalAdd": 2.5 + 5 // 7.5', () {
      final add = Add(
        operand: [
          LiteralDecimal(value: 2.5),
          LiteralInteger(value: 5),
        ],
      );
      expect(add.execute({}), FhirDecimal(7.5));
    });
    test("""define "QuantityAdd": -5.5 'mg' + 2 'mg' // -3.5 'mg'""", () {
      final add = Add(
        operand: [
          LiteralQuantity(
            value: LiteralDecimal(value: -5.5),
            unit: 'mg',
          ),
          LiteralQuantity(
            value: LiteralDecimal(value: 2),
            unit: 'mg',
          ),
        ],
      );
      expect(add.execute({}),
          ValidatedQuantity(value: UcumDecimal.fromString('-3.5'), code: 'mg'));
    });
    test("""define "QuantityAddIsNull": -5.5 'cm' + 2 'cm2'""", () {
      final add = Add(
        operand: [
          LiteralQuantity(
            value: LiteralDecimal(value: -5.5),
            unit: 'cm',
          ),
          LiteralQuantity(
            value: LiteralDecimal(value: 2),
            unit: 'cm2',
          ),
        ],
      );
      expect(add.execute({}), null);
    });
  });
}
