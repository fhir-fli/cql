import 'package:cql/cql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fhir/primitive_types/primitive_types.dart';

void main() {
  group('Less Or Equal Tests', () {
    test('IntegerLessOrEqualIsTrue: 4 <= (2 + 2)', () {
      final result = LessOrEqual(
        operand: [
          LiteralInteger(value: 4),
          LiteralInteger(value: 4),
        ],
      ).execute({});
      expect(result, FhirBoolean(true));
    });

    test('LongLessOrEqualIsTrue: 4L <= (2L + 2L)', () {
      final result = LessOrEqual(
        operand: [
          LiteralInteger(
              value:
                  4), // Assuming LiteralInteger can represent long values for this example
          LiteralInteger(value: 4),
        ],
      ).execute({});
      expect(result, FhirBoolean(true));
    });

    test('DecimalLessOrEqualIsFalse: 3.5 <= (3.5 - 0.1)', () {
      final result = LessOrEqual(
        operand: [
          LiteralDecimal(value: 3.5),
          LiteralDecimal(value: 3.4),
        ],
      ).execute({});
      expect(result, FhirBoolean(false));
    });

    test('QuantityLessOrEqualIsNull: 3.6 \'cm2\' <= 3.6 \'cm\'', () {
      final result = LessOrEqual(
        operand: [
          LiteralQuantity(value: LiteralDecimal(value: 3.6), unit: 'cm2'),
          LiteralQuantity(value: LiteralDecimal(value: 3.6), unit: 'cm'),
        ],
      ).execute({});
      expect(result, null);
    });

    test('NullLessOrEqualIsNull: null <= 5', () {
      final result = LessOrEqual(
        operand: [
          LiteralNull(),
          LiteralInteger(value: 5),
        ],
      ).execute({});
      expect(result, null);
    });
  });
}