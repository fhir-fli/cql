// ignore_for_file: lines_longer_than_80_chars
// The test titles are Grey's original CQL expressions, kept verbatim.

import 'package:cql/src/internal.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

/// Grey's original engine tests for `sum` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 4 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('sum', () {
    test('define "DecimalSum": Sum({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 15.0',
        () async {
      final list = ListExpression(
        element: [
          LiteralDecimal(1.0),
          LiteralDecimal(2.0),
          LiteralDecimal(3.0),
          LiteralDecimal(4.0),
          LiteralDecimal(5.0),
        ],
      );
      final sum = Sum(source: list);
      final result = await sum.execute({});
      expect(result, equals(CqlDecimal(15.0)));
    });
    test(
        """define "QuantitySum": Sum({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 15.0 'mg'""",
        () async {
      final list = ListExpression(
        element: [
          LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(4.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(5.0), unit: 'mg'),
        ],
      );
      final sum = Sum(source: list);
      final result = await sum.execute({});
      expect(
        result,
        equals(
          ValidatedQuantity(value: UcumDecimal.fromNum(15.0), unit: 'mg'),
        ),
      );
    });
    test(
        'define "SumIsNull": Sum({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final sum = Sum(source: list);
      final result = await sum.execute({});
      expect(result, equals(null));
    });
    test('define "SumIsAlsoNull": Sum(null as List<Decimal>)', () async {
      final sum = Sum(source: LiteralNull());
      final result = await sum.execute({});
      expect(result, equals(null));
    });
  });
}
