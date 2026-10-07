import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `after` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 7 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('After', () {
    test('''define "AfterIsTrue": @2012-02-01 after month of @2012-01-01''',
        () async {
      final left = LiteralDate('2012-02-01');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(CqlBoolean(true)));
    });
    test('''define "AfterIsFalse": @2012-01-01 after month of @2012-01-01''',
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(CqlBoolean(false)));
    });
    test('''define "AfterUncertainIsNull": @2012-01-01 after month of @2012''',
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012');
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(null));
    });
    test('''define "AfterIsNull": @2012-01-01 after month of null''', () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(null));
    });
    test('''define "AfterIsTrue": 5 after Interval[1, 4]''', () async {
      final left = LiteralInteger(5);
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final after = After(operand: [left, interval]);
      final result = await after.execute({});
      expect(result, CqlBoolean(true));
    });
    test('''define "AfterIsFalse": Interval[1, 4] after 5''', () async {
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final left = LiteralInteger(5);
      final after = After(operand: [interval, left]);
      final result = await after.execute({});
      expect(result, CqlBoolean(false));
    });
    test('''define "AfterIsNull": Interval[1, 4] after null''', () async {
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final left = LiteralNull();
      final after = After(operand: [interval, left]);
      final result = await after.execute({});
      expect(result, isNull);
    });
  });
}
