import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `expand` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 2 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('expand', () {
    test('expand { Interval[@2018-01-01, @2018-01-04] } per day', () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2018-01-01'),
        high: LiteralDate('2018-01-04'),
      );
      final list = ListExpression(element: [interval1]);
      final expand = Expand(operand: [list]);
      final result = await expand.execute({});
      final interval2 = CqlInterval(
        low: CqlDate.fromString('2018-01-01'),
        high: CqlDate.fromString('2018-01-01'),
      );
      final interval3 = CqlInterval(
        low: CqlDate.fromString('2018-01-02'),
        high: CqlDate.fromString('2018-01-02'),
      );
      final interval4 = CqlInterval(
        low: CqlDate.fromString('2018-01-03'),
        high: CqlDate.fromString('2018-01-03'),
      );
      final interval5 = CqlInterval(
        low: CqlDate.fromString('2018-01-04'),
        high: CqlDate.fromString('2018-01-04'),
      );
      expect(result, [interval2, interval3, interval4, interval5]);
    });
    test('// expand { Interval[@T10:00, @T12:30] } per hour', () async {
      final interval1 = LiteralIntegerInterval(
        low: LiteralInteger(1),
        high: LiteralInteger(10),
      );
      final expand = Expand(operand: [interval1]);
      final result = await expand.execute({});
      expect(result, [
        CqlInteger(1),
        CqlInteger(2),
        CqlInteger(3),
        CqlInteger(4),
        CqlInteger(5),
        CqlInteger(6),
        CqlInteger(7),
        CqlInteger(8),
        CqlInteger(9),
        CqlInteger(10),
      ]);
    });
  });
}
