import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void main() {
  group('Divide', () {
    test('define "IntegerDivide": 4.0 / 2 // 2.0', () {
      final divide = Divide(operand: [
        LiteralDecimal(value: 4.0),
        LiteralInteger(value: 2),
      ]);
      expect(divide.execute({}), equals(FhirDecimal(2.0)));
    });
    test('define "LongDivide": 4.0 / 2L // 2.0', () {
      final divide = Divide(operand: [
        LiteralDecimal(value: 4.0),
        LiteralLong(value: BigInt.from(2)),
      ]);
      expect(divide.execute({}), equals(FhirDecimal(2.0)));
    });
    test('define "DecimalDivide": 9.9 / 3.0 // 3.3', () {
      final divide = Divide(operand: [
        LiteralDecimal(value: 9.9),
        LiteralDecimal(value: 3.0),
      ]);
      expect(divide.execute({}), equals(FhirDecimal(3.3)));
    });
    test('define "DecimalDivideIsNull": 2.2 / null', () {
      final divide = Divide(operand: [
        LiteralDecimal(value: 2.2),
        LiteralNull(),
      ]);
      expect(divide.execute({}), equals(null));
    });
    test('define "DecimalDivideIsError": 2.2 / 0', () {
      final divide = Divide(operand: [
        LiteralDecimal(value: 2.2),
        LiteralInteger(value: 0),
      ]);
      expect(() => divide.execute({}), throwsException);
    });
    test("""define "QuantityDivide": -5.5 'mg' / 2.0 'mg' // -2.8""", () {
      final divide = Divide(operand: [
        LiteralQuantity(value: LiteralDecimal(value: -5.5), unit: 'mg'),
        LiteralQuantity(value: LiteralDecimal(value: 2.0), unit: 'mg'),
      ]);
      expect(
          divide.execute({}), equals(ValidatedQuantity.fromString("-2.8 '1'")));
    });
  });
}
