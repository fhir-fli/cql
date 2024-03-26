import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void equivalentTest() {
  group('Equivalent', () {
    test("""define "IntegerEquivalentIsTrue": 4 ~ (2 + 2)""", () {
      final left = LiteralInteger(value: 4);
      final right = Add(
        operand: [
          LiteralInteger(value: 2),
          LiteralInteger(value: 2),
        ],
      );
      final result = Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongEquivalentIsTrue": 4L ~ (2L + 2L)""", () {
      final left = LiteralLong(value: BigInt.from(4));
      final right = Add(
        operand: [
          LiteralLong(value: BigInt.from(2)),
          LiteralLong(value: BigInt.from(2)),
        ],
      );
      final result = Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalEquivalentIsFalse": 3.5 ~ (3.5 - 0.1)""", () {
      final left = LiteralDecimal(value: 3.5);
      final right = Subtract(
        operand: [
          LiteralDecimal(value: 3.5),
          LiteralDecimal(value: 0.1),
        ],
      );
      final result = Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "StringEquivalentIsTrue": 'John Doe' ~ 'john doe'""", () {
      final left = LiteralString(value: 'John Doe');
      final right = LiteralString(value: 'john doe');
      final result = Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "QuantityEquivalentIsFalse": 3.5 'cm2' ~ 3.5 'cm'""", () {
      final left = LiteralQuantity(
        value: LiteralDecimal(value: 3.5),
        unit: 'cm2',
      );
      final right = LiteralQuantity(
        value: LiteralDecimal(value: 3.5),
        unit: 'cm',
      );
      final result = Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "RatioEquivalentIsTrue": 1:8 ~ 2:16""", () {
      final left = LiteralRatio(
        numerator: LiteralQuantity(value: LiteralDecimal(value: 1)),
        denominator: LiteralQuantity(value: LiteralDecimal(value: 8)),
      );
      final right = LiteralRatio(
        numerator: LiteralQuantity(value: LiteralDecimal(value: 2)),
        denominator: LiteralQuantity(value: LiteralDecimal(value: 16)),
      );
      final result = Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test(
        """define "ListEquivalentIsTrue": { null, 1, 2, 3 } ~ { null, 1, 2, 3 }""",
        () {
      final left = ListExpression(element: [
        LiteralNull(),
        LiteralInteger(value: 1),
        LiteralInteger(value: 2),
        LiteralInteger(value: 3),
      ]);
      final right = ListExpression(element: [
        LiteralNull(),
        LiteralInteger(value: 1),
        LiteralInteger(value: 2),
        LiteralInteger(value: 3),
      ]);
      final result = Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DateTimeEquivalentIsFalse": @2012-01-01 ~ @2012-01-01T12""",
        () {
      final left = LiteralDateTime(value: '2012-01-01');
      final right = LiteralDateTime(value: '2012-01-01T12');
      final result = Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "NullEquivalentIsTrue": null ~ null""", () {
      final left = LiteralNull();
      final right = LiteralNull();
      final result = Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
  });
}
