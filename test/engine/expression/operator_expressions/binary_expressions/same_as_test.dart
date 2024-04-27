import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void sameAsTest() {
  group('SameAs', () {
    test("""define "SameAsTrue": @2012-01-01 same day as @2012-01-01""", () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralDate(value: '2012-01-01');
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(expression.execute({}), FhirBoolean(true));
    });
    test("""define "SameAsFalse": @2012-01-01 same day as @2012-01-02""", () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralDate(value: '2012-01-02');
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(expression.execute({}), FhirBoolean(false));
    });
    test("""define "UncertainSameAsIsNull": @2012-01-01 same day as @2012-01""",
        () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralDate(value: '2012-01');
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(expression.execute({}), null);
    });
    test("""define "SameAsIsNull": @2012-01-01 same day as null""", () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(expression.execute({}), null);
    });
    test("""define "SameAsIsFalse": Interval[1, 4] SameAs 5""", () {
      final low = LiteralInteger(value: 1);
      final high = LiteralInteger(value: 4);
      final interval = IntervalExpression(low: low, high: high);
      final right = LiteralInteger(value: 5);
      final sameAs = SameAs(operand: [interval, right]);
      final result = sameAs.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "SameAsIsFalse": Interval[1, 4] SameAs Interval[1, 4]""",
        () {
      final low1 = LiteralInteger(value: 1);
      final high1 = LiteralInteger(value: 4);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(value: 1);
      final high2 = LiteralInteger(value: 4);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final after = SameAs(operand: [interval1, interval2]);
      final result = after.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "SameAsIsFalse": Interval[4, 4] SameAs 4""", () {
      final low1 = LiteralInteger(value: 4);
      final high1 = LiteralInteger(value: 4);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final right = LiteralInteger(value: 4);
      final after = SameAs(operand: [interval1, right]);
      final result = after.execute({});
      expect(result, FhirBoolean(true));
    });
  });
}
