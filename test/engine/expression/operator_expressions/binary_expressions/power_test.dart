import 'package:cql/engine/engine.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Power', () {
    test('// define "IntegerPowerFun": Power(2, 3) // 8', () {
      final number = LiteralInteger(value: 2);
      final exp = LiteralInteger(value: 3);
      final result = FhirInteger(8);
      expect(Power(operand: [number, exp]).execute({}), equals(result));
    });
    test('// define "LongPower": 2L^3L // 8L', () {
      final number = LiteralLong(value: BigInt.from(2));
      final exp = LiteralLong(value: BigInt.from(3));
      final result = FhirInteger64(8);
      expect(Power(operand: [number, exp]).execute({}), equals(result));
    });
    test('// define "DecimalPower": 2.5^2.0 // 6.25', () {
      final number = LiteralDecimal(value: 2.5);
      final exp = LiteralDecimal(value: 2.0);
      final result = FhirDecimal(6.25);
      expect(Power(operand: [number, exp]).execute({}), equals(result));
    });
    test('// define "NegateIsNull": 2.5^null', () {
      final number = LiteralDecimal(value: 2.5);
      final exp = LiteralNull();
      const result = null;
      expect(Power(operand: [number, exp]).execute({}), equals(result));
    });
  });
}
