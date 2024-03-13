import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('After', () {
    test("""define "AfterIsTrue": @2012-02-01 after month of @2012-01-01""",
        () {
      final left = LiteralDate(value: '2012-02-01');
      final right = LiteralDate(value: '2012-01-01');
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(FhirBoolean(true)));
    });
    test("""define "AfterIsFalse": @2012-01-01 after month of @2012-01-01""",
        () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralDate(value: '2012-01-01');
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(FhirBoolean(false)));
    });
    test("""define "AfterUncertainIsNull": @2012-01-01 after month of @2012""",
        () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralDate(value: '2012');
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(null));
    });
    test("""define "AfterIsNull": @2012-01-01 after month of null""", () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(null));
    });
  });
}
