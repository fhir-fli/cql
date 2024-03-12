import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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
  });
}
