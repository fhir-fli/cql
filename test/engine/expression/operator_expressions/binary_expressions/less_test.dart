import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void lessTest() {
  group('Less', () {
    test("""define "DateTimeLessIsNull": @2012-01-01 < @2012-01-01T12""", () {
      final left = LiteralDateTime(value: '2012-01-01');
      final right = LiteralDateTime(value: '2012-01-01T12');
      final less = Less(operand: [left, right]);
      final result = less.execute({});
      expect(result, equals(null));
    });
    test("""define "IntegerLessIsTrue": 4 < (2 + 2 + 2)""", () {
      final left = LiteralInteger(value: 4);
      final right = Add(operand: [
        LiteralInteger(value: 2),
        Add(operand: [LiteralInteger(value: 2), LiteralInteger(value: 2)]),
      ]);
      final less = Less(operand: [left, right]);
      final result = less.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongLessIsTrue": 4L < (2L + 2L + 2L)""", () {
      final left = LiteralLong(value: BigInt.from(4));
      final right = Add(operand: [
        LiteralLong(value: BigInt.from(2)),
        Add(operand: [
          LiteralLong(value: BigInt.from(2)),
          LiteralLong(value: BigInt.from(2))
        ]),
      ]);
      final less = Less(operand: [left, right]);
      final result = less.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalLessIsFalse": 3.5 < 3.5""", () {
      final left = LiteralDecimal(value: 3.5);
      final right = LiteralDecimal(value: 3.5);
      final less = Less(operand: [left, right]);
      final result = less.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "QuantityLessIsNull": 3.6 'cm2' < 3.5 'cm'""", () {
      final left =
          LiteralQuantity(value: LiteralDecimal(value: 3.6), unit: 'cm2');
      final right =
          LiteralQuantity(value: LiteralDecimal(value: 3.5), unit: 'cm');
      final less = Less(operand: [left, right]);
      final result = less.execute({});
      expect(result, equals(null));
    });
    test("""define "DateTimeLessIsNull": @2012-01-01 < @2012-01-01T12""", () {
      final left = LiteralDateTime(value: '2012-01-01');
      final right = LiteralDateTime(value: '2012-01-01T12');
      final less = Less(operand: [left, right]);
      final result = less.execute({});
      expect(result, equals(null));
    });
    test("""define "NullLessIsNull": null < 5""", () {
      final left = LiteralNull();
      final right = LiteralInteger(value: 5);
      final less = Less(operand: [left, right]);
      final result = less.execute({});
      expect(result, equals(null));
    });
  });
}
