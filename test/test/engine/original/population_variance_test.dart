// ignore_for_file: lines_longer_than_80_chars
// The test titles are Grey's original CQL expressions, kept verbatim.

import 'package:cql/src/internal.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

/// Grey's original engine tests for `population_variance` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 6 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('populationVariance', () {
    test(
        'define "DecimalPopulationVariance": PopulationVariance({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 2.0',
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
      final result = await PopulationVariance(source: list).execute({});
      expect(result, equals(CqlDecimal(2.0)));
    });
    test(
        """define "QuantityPopulationVariance": PopulationVariance({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 2.0 'mg'""",
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
      final result = await PopulationVariance(source: list).execute({});
      expect(
        result,
        equals(
          // The reference engine's conformance suite squares and
          // canonicalizes the unit (see variance_test); 09-b's example
          // writes `2.0 'mg'` (2026-10-06).
          ValidatedQuantity(
            value: UcumDecimal.fromString('0.00000200'),
            unit: 'g2',
          ),
        ),
      );
    });
    test(
        'define "PopulationVarianceIsNull": PopulationVariance({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final result = await PopulationVariance(source: list).execute({});
      expect(result, equals(null));
    });
    test(
        'define "PopulationVarianceIsAlsoNull": PopulationVariance(null as List<Decimal>)',
        () async {
      final result =
          await PopulationVariance(source: LiteralNull()).execute({});
      expect(result, equals(null));
    });
    test('PopulationVariance({ 1, 2, 3, null }) = 0.66666666', () async {
      final list = ListExpression(
        element: [
          LiteralDecimal(1),
          LiteralDecimal(2),
          LiteralDecimal(3),
          LiteralNull(),
        ],
      );
      final result = await PopulationVariance(source: list).execute({});
      // PopulationVariance({ 1, 2, 3, null }): nulls are ignored (09-b); at
      // Decimal's scale of 8 the value is 0.66666667.
      expect(result, equals(CqlDecimal('0.66666667')));
    });
    test('PopulationStdDev({ 1, 2, 3, null }) = 0.816496580927726', () async {
      final list = ListExpression(
        element: [
          LiteralDecimal(1),
          LiteralDecimal(2),
          LiteralDecimal(3),
          LiteralNull(),
        ],
      );
      final result = await PopulationStdDev(source: list).execute({});
      // at Decimal's scale of 8 (09-b)
      expect(result, equals(CqlDecimal('0.81649658')));
    });
  });
}
