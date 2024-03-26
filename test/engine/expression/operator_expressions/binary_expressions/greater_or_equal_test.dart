import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void greaterOrEqualTest() {
  group('GreaterOrEqual', () {
    test(
        """define "DateTimeGreaterOrEqualIsNull": @2012-01-01 >= @2012-01-01T12""",
        () {
      final left = LiteralDateTime(value: '2012-01-01');
      final right = LiteralDateTime(value: '2012-01-01T12');
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = greaterOrEqual.execute({});
      expect(result, equals(null));
    });
    test("""define "IntegerGreaterOrEqualIsTrue": 4 >= (2 + 2)""", () {
      final left = LiteralInteger(value: 4);
      final right = Add(operand: [
        LiteralInteger(value: 2),
        LiteralInteger(value: 2),
      ]);
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = greaterOrEqual.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongGreaterOrEqualIsTrue": 4L >= (2L + 2L)""", () {
      final left = LiteralLong(value: BigInt.from(4));
      final right = Add(operand: [
        LiteralLong(value: BigInt.from(2)),
        LiteralLong(value: BigInt.from(2)),
      ]);
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = greaterOrEqual.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalGreaterOrEqualIsFalse": 3.5 >= (3.5 + 0.1)""", () {
      final left = LiteralDecimal(value: 3.5);
      final right = Add(operand: [
        LiteralDecimal(value: 3.5),
        LiteralDecimal(value: 0.1),
      ]);
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = greaterOrEqual.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "QuantityGreaterOrEqualIsNull": 3.6 'cm2' >= 3.5 'cm'""",
        () {
      final left =
          LiteralQuantity(value: LiteralDecimal(value: 3.6), unit: 'cm2');
      final right =
          LiteralQuantity(value: LiteralDecimal(value: 3.5), unit: 'cm');
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = greaterOrEqual.execute({});
      expect(result, equals(null));
    });
    test("""define "NullGreaterOrEqualIsNull": null >= 5""", () {
      final left = LiteralNull();
      final right = LiteralInteger(value: 5);
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = greaterOrEqual.execute({});
      expect(result, equals(null));
    });
  });
}
