import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `before` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 7 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Before', () {
    test('''define "BeforeIsTrue": @2012-01-01 before month of @2012-02-01''',
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-02-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(CqlBoolean(true)));
    });
    test('''define "BeforeIsFalse": @2012-01-01 before month of @2012-01-01''',
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(CqlBoolean(false)));
    });
    test(
        '''define "BeforeUncertainIsNull": @2012 before month of @2012-02-01''',
        () async {
      final left = LiteralDate('2012');
      final right = LiteralDate('2012-02-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(null));
    });
    test('''define "BeforeIsNull": @2012-01-01 before month of null''',
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(null));
    });
    test('''define "BeforeIsTrue": 0 before Interval[1, 4]''', () async {
      final left = LiteralInteger(0);
      final right =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final expression = Before(operand: [left, right]);
      expect(await expression.execute({}), equals(CqlBoolean(true)));
    });
    test('''define "BeforeIsFalse": Interval[1, 4] before 0''', () async {
      final left =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final right = LiteralInteger(0);
      final expression = Before(operand: [left, right]);
      expect(await expression.execute({}), equals(CqlBoolean(false)));
    });
    test('''define "BeforeIsNull": Interval[1, 4] before null''', () async {
      final left =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final right = LiteralNull();
      final expression = Before(operand: [left, right]);
      expect(await expression.execute({}), equals(null));
    });
  });
}
