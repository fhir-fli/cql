import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `included_in` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 8 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('included in', () {
    test('define "IncludedInIsTrue": Interval[1, 5] included in Interval[0, 5]',
        () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(1),
        high: LiteralInteger(5),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(0),
        high: LiteralInteger(5),
      );
      final includedIn = IncludedIn(operand: [left, right]);
      final result = await includedIn.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test('define "IncludedInIsFalse": -1 during Interval[0, 7]', () async {
      final left = LiteralInteger(-1);
      final right = LiteralIntegerInterval(
        low: LiteralInteger(0),
        high: LiteralInteger(7),
      );
      final includedIn = IncludedIn(operand: [left, right]);
      final result = await includedIn.execute({});
      expect(result, equals(CqlBoolean(false)));
    });
    test('define "IncludedInIsNull": 3 included in (null as Interval<Integer>)',
        () async {
      final left = LiteralInteger(3);
      final right = As(
        operand: LiteralNull(),
        asType: const QName(localPart: 'Interval'),
      );
      final includedIn = IncludedIn(operand: [left, right]);
      final result = await includedIn.execute({});
      expect(result, CqlBoolean(false));
    });
    test('define "IncludedInIsTrue": 5 included in { 1, 3, 5, 7 }', () async {
      final left = LiteralInteger(5);
      final right = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(7),
        ],
      );
      final includedIn = IncludedIn(operand: [left, right]);
      final result = await includedIn.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test('define "IncludedInIsNull": null included in { 1, 3, 5 }', () async {
      final left = LiteralNull();
      final right = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
        ],
      );
      final includedIn = IncludedIn(operand: [left, right]);
      final result = await includedIn.execute({});
      expect(result, isNull);
    });
    test('define "IncludedInIsFalse": { 1, 3, 5 } included in { 1, 3 }',
        () async {
      final left = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
        ],
      );
      final right = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
        ],
      );
      final includedIn = IncludedIn(operand: [left, right]);
      final result = await includedIn.execute({});
      expect(result, equals(CqlBoolean(false)));
    });
    test('define "IncludedInIsFalse": { 1, 3 } included in { 1, 3, 5 }',
        () async {
      final right = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
        ],
      );
      final left = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
        ],
      );
      final includedIn = IncludedIn(operand: [left, right]);
      final result = await includedIn.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test('define "IncludedInIsAlsoNull": { 1, 3, 5, null } included in null',
        () async {
      final left = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralNull(),
        ],
      );
      final right = LiteralNull();
      final includedIn = IncludedIn(operand: [left, right]);
      final result = await includedIn.execute({});
      expect(result, isNull);
    });
  });
}
