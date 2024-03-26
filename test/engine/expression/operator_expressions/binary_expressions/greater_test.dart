import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void greaterTest() {
  group('Greater', () {
    test("""define "DateTimeGreaterIsNull": @2012-01-01 > @2012-01-01T12""",
        () {
      final left = LiteralDateTime(value: '2012-01-01');
      final right = LiteralDateTime(value: '2012-01-01T12');
      final greater = Greater(operand: [left, right]);
      final result = greater.execute({});
      expect(result, equals(null));
    });
    test("""define "IntegerGreaterIsTrue": 4 > 3""", () {
      final left = LiteralInteger(value: 4);
      final right = LiteralInteger(value: 3);
      final greater = Greater(operand: [left, right]);
      final result = greater.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongGreaterIsTrue": 4L > 3L""", () {
      final left = LiteralLong(value: BigInt.from(4));
      final right = LiteralLong(value: BigInt.from(3));
      final greater = Greater(operand: [left, right]);
      final result = greater.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalGreaterIsFalse": 3.5 > 3.5""", () {
      final left = LiteralDecimal(value: 3.5);
      final right = LiteralDecimal(value: 3.5);
      final greater = Greater(operand: [left, right]);
      final result = greater.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "QuantityGreaterIsNull": 3.6 'cm2' > 3.5 'cm'""", () {
      final left =
          LiteralQuantity(value: LiteralDecimal(value: 3.6), unit: 'cm2');
      final right =
          LiteralQuantity(value: LiteralDecimal(value: 3.5), unit: 'cm');
      final greater = Greater(operand: [left, right]);
      final result = greater.execute({});
      expect(result, equals(null));
    });
    test("""define "NullGreaterIsNull": null > 5""", () {
      final left = LiteralNull();
      final right = LiteralInteger(value: 5);
      final greater = Greater(operand: [left, right]);
      final result = greater.execute({});
      expect(result, equals(null));
    });
  });
}
