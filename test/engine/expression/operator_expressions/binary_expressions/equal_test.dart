import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Equal Test', () {
    test('define "IntegerEqualIsTrue": 4 = (2 + 2)', () {
      final equal = Equal(
        operand: [
          LiteralInteger(value: 4),
          Add(
            operand: [
              LiteralInteger(value: 2),
              LiteralInteger(value: 2),
            ],
          ),
        ],
      );
      expect(equal.execute(), FhirBoolean(true));
    });
    test('define "LongEqualIsTrue": 4L = (2L + 2L)', () {
      final equal = Equal(
        operand: [
          LiteralLong(value: BigInt.from(4)),
          Add(
            operand: [
              LiteralLong(value: BigInt.from(2)),
              LiteralLong(value: BigInt.from(2)),
            ],
          ),
        ],
      );
      expect(equal.execute(), FhirBoolean(true));
    });
    test('define "DecimalEqualIsFalse": 3.5 = (3.5 - 0.1)', () {
      final equal = Equal(
        operand: [
          LiteralDecimal(value: 3.5),
          Subtract(
            operand: [
              LiteralDecimal(value: 3.5),
              LiteralDecimal(value: 0.1),
            ],
          ),
        ],
      );
      expect(equal.execute(), FhirBoolean(false));
    });
    test("""define "StringEqualIsFalse": 'John Doe' = 'john doe'""", () {
      final equal = Equal(
        operand: [
          LiteralString(value: 'John Doe'),
          LiteralString(value: 'john doe'),
        ],
      );
      expect(equal.execute(), FhirBoolean(false));
    });
    test("""define "QuantityEqualIsNull": 3.5 'cm2' = 3.5 'cm'""", () {
      final equal = Equal(
        operand: [
          Quantity(value: 3.5, unit: 'cm2'),
          Quantity(value: 3.5, unit: 'cm'),
        ],
      );
      expect(equal.execute(), FhirBoolean(false));
    });
    test('define "RatioEqualIsTrue": 1:8 = 1:8', () {
      final equal = Equal(
        operand: [
          Ratio(
              numerator: Quantity(value: 1, unit: '1'),
              denominator: Quantity(value: 8, unit: '1')),
          Ratio(
              numerator: Quantity(value: 1, unit: '1'),
              denominator: Quantity(value: 8, unit: '1')),
        ],
      );
      expect(equal.execute(), FhirBoolean(true));
    });
    test('define "RatioEqualIsFalse": 1:8 = 2:16', () {
      final equal = Equal(
        operand: [
          Ratio(
              numerator: Quantity(value: 1, unit: '1'),
              denominator: Quantity(value: 8, unit: '1')),
          Ratio(
              numerator: Quantity(value: 2, unit: '1'),
              denominator: Quantity(value: 16, unit: '1')),
        ],
      );
      expect(equal.execute(), FhirBoolean(false));
    });
    test('define "ListEqualIsTrue": { null, 1, 2, 3 } = { null, 1, 2, 3 }',
        () {});
    test('define "DateTimeEqualIsNull": @2012-01-01 = @2012-01-01T12', () {
      final equal = Equal(
        operand: [
          LiteralDateTime(value: '2012-01-01'),
          LiteralDateTime(value: '2012-01-01T12'),
        ],
      );
      expect(equal.execute(), null);
    });
    test('define "NullEqualIsNull": null = null', () {
      final equal = Equal(
        operand: [LiteralNull(), LiteralNull()],
      );
      expect(equal.execute(), null);
    });
  });
}
