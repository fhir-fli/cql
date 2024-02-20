import 'package:cql/cql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fhir/primitive_types/primitive_types.dart';

void main() {
  group('Less Tests', () {
    test('IntegerLessIsTrue: 4 < (2 + 2 + 2)', () {
      final result = Less(
        operand: [
          LiteralInteger(value: 4),
          LiteralInteger(value: 6),
        ],
      ).execute({});
      expect(result, FhirBoolean(true));
    });

    test('LongLessIsTrue: 4L < (2L + 2L + 2L)', () {
      final result = Less(
        operand: [
          LiteralInteger(
              value:
                  4), // Assuming LiteralInteger can represent long values for this example
          LiteralInteger(value: 6),
        ],
      ).execute({});
      expect(result, FhirBoolean(true));
    });

    test('DecimalLessIsFalse: 3.5 < 3.5', () {
      final result = Less(
        operand: [
          LiteralDecimal(value: 3.5),
          LiteralDecimal(value: 3.5),
        ],
      ).execute({});
      expect(result, FhirBoolean(false));
    });

    test('QuantityLessIsNull: 3.6 \'cm2\' < 3.5 \'cm\'', () {
      final result = Less(
        operand: [
          LiteralQuantity(value: LiteralDecimal(value: 3.6), unit: 'cm2'),
          LiteralQuantity(value: LiteralDecimal(value: 3.5), unit: 'cm'),
        ],
      ).execute({});
      expect(result, null);
    });

    test('DateTimeLessIsNull: @2012-01-01 < @2012-01-01T12', () {
      final result = Less(
        operand: [
          LiteralDateTime(value: '2012-01-01'),
          LiteralDateTime(value: '2012-01-01T12'),
        ],
      ).execute({});
      expect(result, null);
    });

    test('NullLessIsNull: null < 5', () {
      final result = Less(
        operand: [
          LiteralNull(),
          LiteralInteger(value: 5),
        ],
      ).execute({});
      expect(result, null);
    });
  });
}
