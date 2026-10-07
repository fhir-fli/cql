import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `same_or_after` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 7 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('SameOrAfter', () {
    test(
        '''define "SameOrAfterTrue": @2012-01-02 same day or after @2012-01-01''',
        () async {
      final left = LiteralDate('2012-01-02');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), CqlBoolean(true));
    });
    test(
        '''define "SameOrAfterFalse": @2012-01-01 same day or after @2012-01-02''',
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-02');
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), CqlBoolean(false));
    });
    test(
        '''define "UncertainSameOrAfterIsNull": @2012-01-02 same day or after @2012-01''',
        () async {
      final left = LiteralDate('2012-01-02');
      final right = LiteralDate('2012-01');
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), null);
    });
    test('''define "SameOrAfterIsNull": @2012-01-01 same day or after null''',
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), null);
    });
    test('''define "SameOrAfterIsTrue": 5 after Interval[1, 4]''', () async {
      final left = LiteralInteger(5);
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final after = SameOrAfter(operand: [left, interval]);
      final result = await after.execute({});
      expect(result, CqlBoolean(true));
    });
    test('''define "SameOrAfterIsFalse": Interval[1, 4] after 5''', () async {
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final left = LiteralInteger(5);
      final after = SameOrAfter(operand: [interval, left]);
      final result = await after.execute({});
      expect(result, CqlBoolean(false));
    });
    test('''define "SameOrAfterIsNull": Interval[1, 4] after null''', () async {
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final left = LiteralNull();
      final after = SameOrAfter(operand: [interval, left]);
      final result = await after.execute({});
      expect(result, isNull);
    });
  });
}
