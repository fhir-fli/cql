import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void sumTest() {
  group('sum', () {
    test('define "DecimalSum": Sum({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 15.0', () {
      final list = ListExpression(element: [
        LiteralDecimal(1.0),
        LiteralDecimal(2.0),
        LiteralDecimal(3.0),
        LiteralDecimal(4.0),
        LiteralDecimal(5.0),
      ]);
      final sum = Sum(source: list);
      final result = sum.execute({});
      expect(result, equals(FhirDecimal(15.0)));
    });
    test(
        """define "QuantitySum": Sum({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 15.0 'mg'""",
        () {
      final list = ListExpression(element: [
        LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(4.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(5.0), unit: 'mg'),
      ]);
      final sum = Sum(source: list);
      final result = sum.execute({});
      expect(
          result,
          equals(ValidatedQuantity(
              value: UcumDecimal.fromDouble(15.0), unit: 'mg')));
    });
    test(
        'define "SumIsNull": Sum({ null as Quantity, null as Quantity, null as Quantity })',
        () {
      final list = ListExpression(element: [
        LiteralNull(),
        LiteralNull(),
        LiteralNull(),
      ]);
      final sum = Sum(source: list);
      final result = sum.execute({});
      expect(result, equals(null));
    });
    test('define "SumIsAlsoNull": Sum(null as List<Decimal>)', () {
      final sum = Sum(source: LiteralNull());
      final result = sum.execute({});
      expect(result, equals(null));
    });
  });
}