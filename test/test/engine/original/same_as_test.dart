import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `same_as` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 7 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('SameAs', () {
    test('''define "SameAsTrue": @2012-01-01 same day as @2012-01-01''',
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), CqlBoolean(true));
    });
    test('''define "SameAsFalse": @2012-01-01 same day as @2012-01-02''',
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-02');
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), CqlBoolean(false));
    });
    test('''define "UncertainSameAsIsNull": @2012-01-01 same day as @2012-01''',
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01');
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), null);
    });
    test('''define "SameAsIsNull": @2012-01-01 same day as null''', () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), null);
    });
    test('''define "SameAsIsFalse": Interval[1, 4] SameAs 5''', () async {
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final right = LiteralInteger(5);
      final sameAs = SameAs(operand: [interval, right]);
      final result = await sameAs.execute({});
      expect(result, CqlBoolean(false));
    });
    test('''define "SameAsIsFalse": Interval[1, 4] SameAs Interval[1, 4]''',
        () async {
      final low1 = LiteralInteger(1);
      final high1 = LiteralInteger(4);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(1);
      final high2 = LiteralInteger(4);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final after = SameAs(operand: [interval1, interval2]);
      final result = await after.execute({});
      expect(result, CqlBoolean(true));
    });
    test('''define "SameAsIsFalse": Interval[4, 4] SameAs 4''', () async {
      final low1 = LiteralInteger(4);
      final high1 = LiteralInteger(4);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final right = LiteralInteger(4);
      final after = SameAs(operand: [interval1, right]);
      final result = await after.execute({});
      expect(result, CqlBoolean(true));
    });
  });
}
