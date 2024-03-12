import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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
  });
}
