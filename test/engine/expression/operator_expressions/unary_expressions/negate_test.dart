import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void negateTest() {
  group('Negate', () {
    test("""define "IntegerNegate": 3 // -3""", () {
      final input = LiteralInteger(3);
      final result = Negate(operand: input);
      expect(result.execute({}), FhirInteger(-3));
    });
    test("""define "LongNegate": 3L // -3L""", () {
      final input = LiteralLong(BigInt.from(3));
      final result = Negate(operand: input);
      expect(result.execute({}), FhirInteger64(-3));
    });
    test("""define "DecimalNegate": -(-3.3) // 3.3""", () {
      final input = LiteralDecimal(-3.3);
      final result = Negate(operand: input);
      expect(result.execute({}), FhirDecimal(3.3));
    });
    test("""define "QuantityNegate": 3.3 'mg' // -3.3 'mg'""", () {
      final input = LiteralQuantity(LiteralDecimal(3.3), unit: 'mg');
      final result = Negate(operand: input);
      expect(result.execute({}), ValidatedQuantity.fromString("-3.3 'mg'"));
    });
    test("""define "NegateIsNull": -(null as Integer)""", () {
      final input =
          As(asType: QName.fromDataType('Integer'), operand: LiteralNull());
      final result = Negate(operand: input);
      expect(result.execute({}), isNull);
    });
  });
}
