import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void absTest() {
  group('Abs', () {
    test("""define "IntegerAbs": Abs(-5) // 5""", () {
      final input = LiteralInteger(value: -5);
      final result = Abs(operand: input);
      expect(result.execute({}), FhirInteger(5));
    });
    test("""define "IntegerAbsIsNull": Abs(null as Integer)""", () {
      final input =
          As(asType: QName.fromDataType('Integer'), operand: LiteralNull());
      final result = Abs(operand: input);
      expect(result.execute({}), isNull);
    });
    test("""define "LongAbs": Abs(-5000000L) // 5000000L""", () {
      final input = LiteralLong(value: BigInt.from(-5000000));
      final result = Abs(operand: input);
      expect(result.execute({}), FhirInteger64(5000000));
    });
    test("""define "DecimalAbs": Abs(-5.5) // 5.5""", () {
      final input = LiteralDecimal(value: -5.5);
      final result = Abs(operand: input);
      expect(result.execute({}), FhirDecimal(5.5));
    });
    test("""define "QuantityAbs": Abs(-5.5 'mg') // 5.5 'mg'""", () {
      final input =
          LiteralQuantity(value: LiteralDecimal(value: -5.5), unit: 'mg');
      final result = Abs(operand: input);
      expect(result.execute({}), ValidatedQuantity.fromString("5.5 'mg'"));
    });
  });
}
