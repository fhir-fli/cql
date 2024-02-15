import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void main() {
  group('Subtract', () {
    test('define  "IntegerSubtract": 2 - 1 // 1', () {
      final subtract = Subtract(
        operand: [
          LiteralInteger(value: 2),
          LiteralInteger(value: 1),
        ],
      );
      expect(subtract.execute(), FhirInteger(1));
    });
    test('define  "LongSubtract": 2L - 1L // 1L', () {
      final subtract = Subtract(
        operand: [
          LiteralLong(value: BigInt.from(2)),
          LiteralLong(value: BigInt.from(1)),
        ],
      );
      expect(subtract.execute(), FhirInteger64(BigInt.from(1)));
    });
    test('define  "DecimalSubtract": 3.14 - 3.12 // 0.02', () {
      final subtract = Subtract(
        operand: [
          LiteralDecimal(value: 3.14),
          LiteralDecimal(value: 3.12),
        ],
      );
      expect(subtract.execute(), FhirDecimal(0.02));
    });
    test("""define  "QuantitySubtract": 3.14 'mg' - 3.12 'mg' // 0.02 'mg'""",
        () {
      final subtract = Subtract(
        operand: [
          Quantity(value: 3.14, unit: 'mg'),
          Quantity(value: 3.12, unit: 'mg'),
        ],
      );

      expect(
          subtract.execute(), ValidatedQuantity.fromNumber(0.02, code: 'mg'));
    });
    test("""define  "QuantitySubtractError": 3.14 'cm' - 3.12 'cm2'""", () {
      final subtract = Subtract(
        operand: [
          Quantity(value: 3.14, unit: 'cm'),
          Quantity(value: 3.12, unit: 'cm2'),
        ],
      );
      expect(subtract.execute(), null);
    });
    test('define  "SubtractIsNull": 3 - null', () {
      final subtract = Subtract(
        operand: [
          LiteralInteger(value: 3),
          LiteralNull(),
        ],
      );
      expect(subtract.execute(), null);
    });
  });
}
