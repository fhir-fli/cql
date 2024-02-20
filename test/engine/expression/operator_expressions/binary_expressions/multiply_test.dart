import 'package:cql/cql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void main() {
  group('Multiply Tests', () {
    test('12 cm * 3 cm results in 36 cm^2', () {
      final result = Multiply(
        operand: [
          LiteralQuantity(value: LiteralDecimal(value: 12), unit: 'cm'),
          LiteralQuantity(value: LiteralDecimal(value: 3), unit: 'cm'),
        ],
      ).execute({});

      final finalResult = result.convertTo('cm2');

      expect(result, isA<ValidatedQuantity>());
      expect(finalResult.value, UcumDecimal.fromString('36'));
      expect(finalResult.code, 'cm2');
    });

    test('3 cm * 12 cm2 results in 36 cm^3', () {
      final result = Multiply(
        operand: [
          LiteralQuantity(value: LiteralDecimal(value: 3), unit: 'cm'),
          LiteralQuantity(value: LiteralDecimal(value: 12), unit: 'cm2'),
        ],
      ).execute({});

      final finalResult = result.convertTo('cm3');

      expect(result, isA<ValidatedQuantity>());
      expect(finalResult.value, UcumDecimal.fromString('36'));
      expect(finalResult.code, 'cm3');
    });

    // Example test for null handling
    test('Multiplication with null operand results in null', () {
      final result = Multiply(
        operand: [
          LiteralQuantity(value: LiteralDecimal(value: 12), unit: 'cm'),
          LiteralNull(),
        ],
      ).execute({});

      expect(result, null);
    });
  });
}
