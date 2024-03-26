import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void sameOrBeforeTest() {
  group('SameOrBefore', () {
    test(
        """define "SameOrBeforeTrue": @2012-01-01 same day or before @2012-01-02""",
        () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralDate(value: '2012-01-02');
      const precision = CqlDateTimePrecision.day;
      final expression = SameOrBefore(
        precision: precision,
        operand: [left, right],
      );
      expect(expression.execute({}), FhirBoolean(true));
    });
    test(
        """define "SameOrBeforeFalse": @2012-01-02 same day or before @2012-01-01""",
        () {
      final left = LiteralDate(value: '2012-01-02');
      final right = LiteralDate(value: '2012-01-01');
      const precision = CqlDateTimePrecision.day;
      final expression = SameOrBefore(
        precision: precision,
        operand: [left, right],
      );
      expect(expression.execute({}), FhirBoolean(false));
    });
    test(
        """define "UncertainSameOrBeforeIsNull": @2012-01-02 same day or before @2012-01""",
        () {
      final left = LiteralDate(value: '2012-01-02');
      final right = LiteralDate(value: '2012-01');
      const precision = CqlDateTimePrecision.day;
      final expression = SameOrBefore(
        precision: precision,
        operand: [left, right],
      );
      expect(expression.execute({}), null);
    });
    test("""define "SameOrBeforeIsNull": @2012-01-01 same day or before null""",
        () {
      final left = LiteralDate(value: '2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.day;
      final expression = SameOrBefore(
        precision: precision,
        operand: [left, right],
      );
      expect(expression.execute({}), null);
    });
  });
}
