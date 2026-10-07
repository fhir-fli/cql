// ignore_for_file: lines_longer_than_80_chars
// The test titles are Grey's original CQL expressions, kept verbatim.

import 'package:cql/src/internal.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

/// Grey's original engine tests for `variance` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 4 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('variance', () {
    test(
        'define "DecimalVariance": Variance({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 2.0',
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
      final variance = Variance(source: list);
      final result = await variance.execute({});
      // Expected value per the CQL reference (09-b) example for this
      // operator, read 2026-10-06; the original test's value (the sample
      // and population formulas swapped, and double precision) was not the
      // spec's. Decimal has a scale of 8 (09-b, Decimal).
      // `Variance({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 2.5`
      expect(result, equals(CqlDecimal(2.5)));
    });
    test(
        """define "QuantityVariance": Variance({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 2.0 'mg'""",
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
      final variance = Variance(source: list);
      final result = await variance.execute({});
      // 09-b's example writes `2.5 'mg'`; the reference engine's conformance
      // suite squares and canonicalizes the unit (`2.5 'm2'`, `0 'm6'`),
      // and the engine follows the reference implementation (2026-10-06).
      expect(
        result,
        equals(
          ValidatedQuantity(
            value: UcumDecimal.fromString('0.00000250'),
            unit: 'g2',
          ),
        ),
      );
    });
    test(
        'define "VarianceIsNull": Variance({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final variance = Variance(source: list);
      final result = await variance.execute({});
      expect(result, equals(null));
    });
    test('define "VarianceIsAlsoNull": Variance(null as List<Decimal>)',
        () async {
      final variance = Variance(source: LiteralNull());
      final result = await variance.execute({});
      expect(result, equals(null));
    });
  });
}
