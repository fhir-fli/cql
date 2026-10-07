// ignore_for_file: lines_longer_than_80_chars
// The test titles are Grey's original CQL expressions, kept verbatim.

import 'package:cql/src/internal.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

/// Grey's original engine tests for `std_dev` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 4 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('stddev', () {
    test(
        'define "DecimalStdDev": StdDev({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 1.4142135623730951',
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
      final stddev = StdDev(source: list);
      final result = await stddev.execute({});
      // Expected value per the CQL reference (09-b) example for this
      // operator, read 2026-10-06; the original test's value (the sample
      // and population formulas swapped, and double precision) was not the
      // spec's. Decimal has a scale of 8 (09-b, Decimal).
      // `StdDev({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 1.58113883`
      expect(result, equals(CqlDecimal('1.58113883')));
    });
    test(
        """define "QuantityStdDev": StdDev({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 1.4142135623730951 'mg'""",
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
      final stddev = StdDev(source: list);
      final result = await stddev.execute({});
      expect(
        result,
        equals(
          ValidatedQuantity(
            // `StdDev({ … 'mg' }) // 1.58113883 'mg'` (09-b)
            value: UcumDecimal.fromString('1.58113883'),
            unit: 'mg',
          ),
        ),
      );
    });
    test(
        'define "StdDevIsNull": StdDev({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final stddev = StdDev(source: list);
      final result = await stddev.execute({});
      expect(result, equals(null));
    });
    test('define "StdDevIsAlsoNull": StdDev(null as List<Decimal>)', () async {
      final stddev = StdDev(source: LiteralNull());
      final result = await stddev.execute({});
      expect(result, equals(null));
    });
  });
}
