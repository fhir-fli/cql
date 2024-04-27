import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void sameOrAfterTest() {
  group('SameOrAfter', () {
    test(
        """define "SameOrAfterTrue": @2012-01-02 same day or after @2012-01-01""",
        () {
      final left = LiteralDate(value: '2012-01-02');
      final right = LiteralDate(value: '2012-01-01');
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(expression.execute({}), FhirBoolean(true));
    });
    test(
        """define "SameOrAfterFalse": @2012-01-01 same day or after @2012-01-02""",
        () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralDate(value: '2012-01-02');
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(expression.execute({}), FhirBoolean(false));
    });
    test(
        """define "UncertainSameOrAfterIsNull": @2012-01-02 same day or after @2012-01""",
        () {
      final left = LiteralDate(value: '2012-01-02');
      final right = LiteralDate(value: '2012-01');
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(expression.execute({}), null);
    });
    test("""define "SameOrAfterIsNull": @2012-01-01 same day or after null""",
        () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(expression.execute({}), null);
    });
    test("""define "SameOrAfterIsTrue": 5 after Interval[1, 4]""", () {
      final left = LiteralInteger(value: 5);
      final low = LiteralInteger(value: 1);
      final high = LiteralInteger(value: 4);
      final interval = IntervalExpression(low: low, high: high);
      final after = SameOrAfter(operand: [left, interval]);
      final result = after.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "SameOrAfterIsFalse": Interval[1, 4] after 5""", () {
      final low = LiteralInteger(value: 1);
      final high = LiteralInteger(value: 4);
      final interval = IntervalExpression(low: low, high: high);
      final left = LiteralInteger(value: 5);
      final after = SameOrAfter(operand: [interval, left]);
      final result = after.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "SameOrAfterIsNull": Interval[1, 4] after null""", () {
      final low = LiteralInteger(value: 1);
      final high = LiteralInteger(value: 4);
      final interval = IntervalExpression(low: low, high: high);
      final left = LiteralNull();
      final after = SameOrAfter(operand: [interval, left]);
      final result = after.execute({});
      expect(result, isNull);
    });
  });
}
