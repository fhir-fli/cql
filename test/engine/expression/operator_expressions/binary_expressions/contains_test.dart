import 'package:cql/cql.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:flutter_test/flutter_test.dart';

void containsTest() {
  group('Contains', () {
    test("""define "ContainsIsTrue": Interval[1, 5] contains 4""", () {
      final interval = IntervalExpression(
        low: LiteralInteger(value: 1),
        high: LiteralInteger(value: 5),
      );
      final value = LiteralInteger(value: 4);
      final contains = Contains(
        operand: [interval, value],
      );
      final result = contains.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "ContainsIsFalse": Interval[1, 5] contains 6""", () {
      final interval = IntervalExpression(
        low: LiteralInteger(value: 1),
        high: LiteralInteger(value: 5),
      );
      final value = LiteralInteger(value: 6);
      final contains = Contains(
        operand: [interval, value],
      );
      final result = contains.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "ContainsIsNull": Interval[1, 5] contains null""", () {
      final interval = IntervalExpression(
        low: LiteralInteger(value: 1),
        high: LiteralInteger(value: 5),
      );
      final value = LiteralNull();
      final contains = Contains(
        operand: [interval, value],
      );
      final result = contains.execute({});
      expect(result, null);
    });
    test("""define "ContainsIsTrue": { 1, 3, 5, 7 } contains 5""", () {
      final list = ListExpression(
        element: [
          LiteralInteger(value: 1),
          LiteralInteger(value: 3),
          LiteralInteger(value: 5),
          LiteralInteger(value: 7),
        ],
      );
      final value = LiteralInteger(value: 5);
      final contains = Contains(
        operand: [list, value],
      );
      final result = contains.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "ContainsIsFalse": { 1, 3, 5, 7 } contains 4""", () {
      final list = ListExpression(
        element: [
          LiteralInteger(value: 1),
          LiteralInteger(value: 3),
          LiteralInteger(value: 5),
          LiteralInteger(value: 7),
        ],
      );
      final value = LiteralInteger(value: 4);
      final contains = Contains(
        operand: [list, value],
      );
      final result = contains.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "ContainsIsAlsoFalse": null contains 4""", () {
      final list = LiteralNull();
      final value = LiteralInteger(value: 4);
      final contains = Contains(
        operand: [list, value],
      );
      final result = contains.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "ContainsNullIsFalse": { 1, 3, 5, 7 } contains null""", () {
      final list = ListExpression(
        element: [
          LiteralInteger(value: 1),
          LiteralInteger(value: 3),
          LiteralInteger(value: 5),
          LiteralInteger(value: 7),
        ],
      );
      final value = LiteralNull();
      final contains = Contains(
        operand: [list, value],
      );
      final result = contains.execute({});
      expect(result, FhirBoolean(false));
    });
  });
}
