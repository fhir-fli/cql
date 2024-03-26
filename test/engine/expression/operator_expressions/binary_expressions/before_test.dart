import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void beforeTest() {
  group('Before', () {
    test("""define "BeforeIsTrue": @2012-01-01 before month of @2012-02-01""",
        () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralDate(value: '2012-02-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(FhirBoolean(true)));
    });
    test("""define "BeforeIsFalse": @2012-01-01 before month of @2012-01-01""",
        () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralDate(value: '2012-01-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(FhirBoolean(false)));
    });
    test(
        """define "BeforeUncertainIsNull": @2012 before month of @2012-02-01""",
        () {
      final left = LiteralDate(value: '2012');
      final right = LiteralDate(value: '2012-02-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(null));
    });
    test("""define "BeforeIsNull": @2012-01-01 before month of null""", () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(null));
    });
  });
}
