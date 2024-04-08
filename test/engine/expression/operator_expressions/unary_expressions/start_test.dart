import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void startTest() {
  group('Start', () {
    test("""define "StartOfInterval": start of Interval[1, 5] // 1""", () {
      final interval = IntervalExpression(
          lowClosed: true,
          low: LiteralInteger(value: 1),
          highClosed: true,
          high: LiteralInteger(value: 5));
      final start = Start(operand: interval);
      final result = start.execute({});
      expect(result, FhirInteger(1));
    });
    test("""define "StartIsNull": start of (null as Interval<Integer>)""", () {
      final interval =
          As(operand: LiteralNull(), asType: QName.fromDataType('Interval'));
      final start = Start(operand: interval);
      final result = start.execute({});
      expect(result, isNull);
    });
  });
}
