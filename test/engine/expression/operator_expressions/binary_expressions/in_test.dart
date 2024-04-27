import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void inTest() {
  group('In', () {
    test("""define "InIsTrue": 3 in Interval[0, 5]""", () {
      final value = LiteralInteger(value: 3);
      final interval = IntervalExpression(
          low: LiteralInteger(value: 0), high: LiteralInteger(value: 5));
      final inValue = In(operand: [value, interval]);
      final result = inValue.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "InIsFalse": -1 in Interval[0, 7]""", () {
      final value = LiteralInteger(value: -1);
      final interval = IntervalExpression(
          low: LiteralInteger(value: 0), high: LiteralInteger(value: 7));
      final inValue = In(operand: [value, interval]);
      final result = inValue.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "InIsAlsoFalse": 3 in (null as Interval<Integer>)""", () {
      final value = LiteralInteger(value: 3);
      final interval =
          As(operand: LiteralNull(), asType: QName.fromFull('Interval'));
      final inValue = In(operand: [value, interval]);
      final result = inValue.execute({'library': CqlLibrary()});
      expect(result, FhirBoolean(false));
    });
    test("""define "InIsTrue": 5 in { 1, 3, 5, 7 }""", () {
      final value = LiteralInteger(value: 3);
      final interval = ListExpression(element: [
        LiteralInteger(value: 1),
        LiteralInteger(value: 3),
        LiteralInteger(value: 5),
        LiteralInteger(value: 7),
      ]);
      final inValue = In(operand: [value, interval]);
      final result = inValue.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "InIsFalse": 5 in { 1, 3 }""", () {
      final value = LiteralInteger(value: 5);
      final interval = ListExpression(element: [
        LiteralInteger(value: 1),
        LiteralInteger(value: 3),
      ]);
      final inValue = In(operand: [value, interval]);
      final result = inValue.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "InIsAlsoFalse": 5 in null""", () {
      final value = LiteralInteger(value: 3);
      final interval =
          As(operand: LiteralNull(), asType: QName.fromFull('List'));
      final inValue = In(operand: [value, interval]);
      final result = inValue.execute({'library': CqlLibrary()});
      expect(result, FhirBoolean(false));
    });
    test("""define "NullInIsTrue": null in { 1, 3, 5, null }""", () {
      final value = LiteralNull();
      final interval = ListExpression(element: [
        LiteralInteger(value: 1),
        LiteralInteger(value: 3),
        LiteralInteger(value: 5),
        LiteralNull(),
      ]);
      final inValue = In(operand: [value, interval]);
      final result = inValue.execute({});
      expect(result, FhirBoolean(true));
    });
  });
}
