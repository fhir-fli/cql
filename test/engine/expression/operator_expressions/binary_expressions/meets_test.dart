import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void meetsTest() {
  group('Meets', () {
    test(
        """define "MeetsAtHours": Interval[@T03, @T04] meets Interval[@T05, @T06]""",
        () {
      final low1 = LiteralTime(value: '@T03');
      final high1 = LiteralTime(value: '@T04');
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralTime(value: '@T05');
      final high2 = LiteralTime(value: '@T06');
      final interval2 = IntervalExpression(low: low2, high: high2);
      final meets = Meets(operand: [interval1, interval2]);
      final result = meets.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "MeetsIsTrue": Interval[6, 10] meets Interval[0, 5]""", () {
      final low1 = LiteralInteger(value: 6);
      final high1 = LiteralInteger(value: 10);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(value: 0);
      final high2 = LiteralInteger(value: 5);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final meets = Meets(operand: [interval1, interval2]);
      final result = meets.execute({});
      expect(result, FhirBoolean(true));
    });
    test(
        """define "MeetsIsNull": Interval[6, 10] meets (null as Interval<Integer>)""",
        () {
      final low1 = LiteralInteger(value: 6);
      final high1 = LiteralInteger(value: 10);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final interval2 =
          As(operand: LiteralNull(), asType: QName.fromDataType('Interval'));
      final meets = Meets(operand: [interval1, interval2]);
      final result = meets.execute({});
      expect(result, isNull);
    });
  });
}
