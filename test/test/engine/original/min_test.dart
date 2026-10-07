// ignore_for_file: lines_longer_than_80_chars
// The test titles are Grey's original CQL expressions, kept verbatim.

import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `min` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 5 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Min', () {
    test('define "IntegerMin": Min({ 2, 4, 8, 6 }) // 2', () async {
      final list = ListExpression(
        element: [
          LiteralInteger(2),
          LiteralInteger(4),
          LiteralInteger(8),
          LiteralInteger(6),
        ],
      );
      final min = Min(source: list);
      final result = await min.execute({});
      expect(result, equals(CqlInteger(2)));
    });
    test('define "LongMin": Min({ 2L, 4L, 8L, 6L }) // 2L', () async {
      final list = ListExpression(
        element: [
          LiteralLong(BigInt.from(2)),
          LiteralLong(BigInt.from(4)),
          LiteralLong(BigInt.from(8)),
          LiteralLong(BigInt.from(6)),
        ],
      );
      final min = Min(source: list);
      final result = await min.execute({});
      expect(result, equals(CqlLong(BigInt.from(2))));
    });
    test(
        'define "DateMin": Min({ @2012-12-31, @2013-01-01, @2012-01-01 }) // @2012-01-01',
        () async {
      final list = ListExpression(
        element: [
          LiteralDate('2012-12-31'),
          LiteralDate('2013-01-01'),
          LiteralDate('2012-01-01'),
        ],
      );
      final min = Min(source: list);
      final result = await min.execute({});
      expect(result, equals(CqlDate.fromString('2012-01-01')));
    });
    test(
        'define "MinIsNull": Min({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
        element: [LiteralNull(), LiteralNull(), LiteralNull()],
      );
      final min = Min(source: list);
      final result = await min.execute({});
      expect(result, equals(null));
    });
    test('define "MinIsAlsoNull": Min(null as List<Decimal>)', () async {
      final min = Min(source: LiteralNull());
      final result = await min.execute({});
      expect(result, equals(null));
    });
  });
}
