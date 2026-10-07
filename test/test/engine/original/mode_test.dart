// ignore_for_file: lines_longer_than_80_chars
// The test titles are Grey's original CQL expressions, kept verbatim.

import 'package:cql/src/internal.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

/// Grey's original engine tests for `mode` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 4 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('mode', () {
    test('define "DecimalMode": Mode({ 2.0, 2.0, 8.0, 6.0, 8.0, 8.0 }) // 8.0',
        () async {
      final list = ListExpression(
        element: [
          LiteralDecimal(2.0),
          LiteralDecimal(2.0),
          LiteralDecimal(8.0),
          LiteralDecimal(6.0),
          LiteralDecimal(8.0),
          LiteralDecimal(8.0),
        ],
      );
      final mode = Mode(source: list);
      final result = await mode.execute({});
      expect(result, equals(CqlDecimal(8.0)));
    });
    test(
        """define "QuantityMode": Mode({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 2.0 'mg' }) // 2.0 'mg'""",
        () async {
      final list = ListExpression(
        element: [
          LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
        ],
      );
      final mode = Mode(source: list);
      final result = await mode.execute({});
      expect(
        result,
        equals(
          ValidatedQuantity(value: UcumDecimal.fromNum(2.0), unit: 'mg'),
        ),
      );
    });
    test(
        'define "ModeIsNull": Mode({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final mode = Mode(source: list);
      final result = await mode.execute({});
      expect(result, equals(null));
    });
    test('define "ModeIsAlsoNull": Mode(null as List<Decimal>)', () async {
      final mode = Mode(source: LiteralNull());
      final result = await mode.execute({});
      expect(result, equals(null));
    });
  });
}
