import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void lessOrEqualTest() {
  group('LessOrEqual', () {
    test(
        """define "DateTimeLessOrEqualIsNull": @2012-01-01 <= @2012-01-01T12""",
        () {
      final left = LiteralDateTime(value: '2012-01-01');
      final right = LiteralDateTime(value: '2012-01-01T12');
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = lessOrEqual.execute({});
      expect(result, equals(null));
    });
    test("""define "IntegerLessOrEqualIsTrue": 4 <= (2 + 2)""", () {
      final left = LiteralInteger(value: 4);
      final right = Add(operand: [
        LiteralInteger(value: 2),
        LiteralInteger(value: 2),
      ]);
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = lessOrEqual.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongLessOrEqualIsTrue": 4L <= (2L + 2L)""", () {
      final left = LiteralLong(value: BigInt.from(4));
      final right = Add(operand: [
        LiteralLong(value: BigInt.from(2)),
        LiteralLong(value: BigInt.from(2)),
      ]);
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = lessOrEqual.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalLessOrEqualIsFalse": 3.5 <= (3.5 - 0.1)""", () {
      final left = LiteralDecimal(value: 3.5);
      final right = Subtract(operand: [
        LiteralDecimal(value: 3.5),
        LiteralDecimal(value: 0.1),
      ]);
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = lessOrEqual.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "QuantityLessOrEqualIsNull": 3.6 'cm2' <= 3.6 'cm'""", () {
      final left =
          LiteralQuantity(value: LiteralDecimal(value: 3.6), unit: 'cm2');
      final right =
          LiteralQuantity(value: LiteralDecimal(value: 3.6), unit: 'cm');
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = lessOrEqual.execute({});
      expect(result, equals(null));
    });
    test("""define "NullLessOrEqualIsNull": null <= 5""", () {
      final left = LiteralNull();
      final right = LiteralInteger(value: 5);
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = lessOrEqual.execute({});
      expect(result, equals(null));
    });
  });
}
