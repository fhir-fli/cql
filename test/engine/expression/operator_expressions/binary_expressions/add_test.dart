import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Add Expression', () {
    test('define "IntegerAdd": 2 + 2 // 4', () {
      final add = Add(
        operand: [
          LiteralInteger(value: 2),
          LiteralInteger(value: 2),
        ],
      );
      expect(add.execute(), FhirInteger(2));
    });
    test('define "IntegerAddIsNull": 2 + null', () {});
    test('define "LongAdd": 25L + 5 // 30L', () {});
    test('define "DecimalAdd": 2.5 + 5 // 7.5', () {});
    test("""define "QuantityAdd": -5.5 'mg' + 2 'mg' // -3.5 'mg'""", () {});
    test("""define "QuantityAddIsNull": -5.5 'cm' + 2 'cm2'""", () {});
  });
}
