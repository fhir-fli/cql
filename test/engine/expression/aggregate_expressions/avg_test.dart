import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void avgTest() {
  group('avg', () {
    test('define "DecimalAvg": Avg({ 5.5, 4.7, 4.8 }) // 5.0', () {
      final list = ListExpression(element: [
        LiteralDecimal(5.5),
        LiteralDecimal(4.7),
        LiteralDecimal(4.8)
      ]);
      final avg = Avg(source: list);
      final result = avg.execute({});
      expect(result, equals(FhirDecimal(5.0)));
    });
    test(
        """define "QuantityAvg": Avg({ 5.5 'cm', 4.7 'cm', 4.8 'cm' }) // 5.0 'cm'""",
        () {
      final list = ListExpression(element: [
        LiteralQuantity(LiteralDecimal(5.5), unit: 'cm'),
        LiteralQuantity(LiteralDecimal(4.7), unit: 'cm'),
        LiteralQuantity(LiteralDecimal(4.8), unit: 'cm')
      ]);
      final avg = Avg(source: list);
      final result = avg.execute({});
      expect(
          result,
          equals(ValidatedQuantity(
              value: UcumDecimal.fromDouble(5.0), unit: 'cm')));
    });
    test('define "AvgIsNull": Avg(null as List<Decimal>)', () {
      final list = ListExpression(element: [LiteralNull()]);
      final avg = Avg(source: list);
      final result = avg.execute({});
      expect(result, equals(null));
    });
  });
}