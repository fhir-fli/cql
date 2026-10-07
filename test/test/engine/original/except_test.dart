import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `except` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 6 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('except', () {
    test(
        'define "Except": Interval[0, 5] except Interval[3, 7] // Interval[0, 2]',
        () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(0),
        high: LiteralInteger(5),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(3),
        high: LiteralInteger(7),
      );
      final except = Except(operand: [left, right]);
      final result = await except.execute({});
      expect(
        result,
        equals(CqlInterval(low: CqlInteger(0), high: CqlInteger(2))),
      );
    });
    test('define "ExceptIsNull": null except Interval[-1, 7]', () async {
      final left = LiteralNull();
      final right = LiteralIntegerInterval(
        low: LiteralInteger(-1),
        high: LiteralInteger(7),
      );
      final except = Except(operand: [left, right]);
      final result = await except.execute({});
      expect(result, equals(null));
    });
    test('define "Except": { 1, 3, 5, 7 } except { 1, 3 } // { 5, 7 }',
        () async {
      final left = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(7),
        ],
      );
      final right = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
        ],
      );
      final except = Except(operand: [left, right]);
      final result = await except.execute({});
      expect(
        result,
        equals([
          CqlInteger(5),
          CqlInteger(7),
        ]),
      );
    });
    test('define "ExceptLeft": { 1, 3, 5, 7 } except null // { 1, 3, 5, 7 }',
        () async {
      final left = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(7),
        ],
      );
      final right = LiteralNull();
      final except = Except(operand: [left, right]);
      final result = await except.execute({});
      expect(
        result,
        equals([
          CqlInteger(1),
          CqlInteger(3),
          CqlInteger(5),
          CqlInteger(7),
        ]),
      );
    });
    test(
        'define "ExceptWithNull": { 1, 3, 5, 7, null } except { 1, 3, null } // { 5, 7 }',
        () async {
      final left = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(7),
          LiteralNull(),
        ],
      );
      final right = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralNull(),
        ],
      );
      final except = Except(operand: [left, right]);
      final result = await except.execute({});
      expect(
        result,
        equals([
          CqlInteger(5),
          CqlInteger(7),
        ]),
      );
    });
    test('define "ExceptIsNull": null except { 1, 3, 5 }', () async {
      final left = LiteralNull();
      final right = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
        ],
      );
      final except = Except(operand: [left, right]);
      final result = await except.execute({});
      expect(result, equals(null));
    });
  });
}
