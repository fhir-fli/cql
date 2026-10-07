import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `includes` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// The 2026-02-10 consolidation ("~75 unit tests into 8 spec-aligned files")
/// dropped these 7 cases; the value types are the cql engine's
/// (CqlBoolean for FhirBoolean, and so on), the titles and assertions are
/// as written.
void main() {
  group('includes', () {
    test('define "IncludesIsTrue": Interval[-1, 5] includes Interval[0, 5]',
        () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(-1),
        high: LiteralInteger(5),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(0),
        high: LiteralInteger(5),
      );
      final includes = Includes(operand: [left, right]);
      final result = await includes.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test('define "IncludesIsFalse": Interval[-1, 5] includes 6', () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(-1),
        high: LiteralInteger(5),
      );
      final right = LiteralInteger(6);
      final includes = Includes(operand: [left, right]);
      final result = await includes.execute({});
      expect(result, equals(CqlBoolean(false)));
    });
    test('define "IncludesIsNull": Interval[-1, 5] includes null', () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(-1),
        high: LiteralInteger(5),
      );
      final right = LiteralNull();
      final includes = Includes(operand: [left, right]);
      final result = await includes.execute({});
      expect(result, isNull);
    });
    test('define "IncludesIsTrue": { 1, 3, 5, 7 } includes 5', () async {
      final left = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(7),
        ],
      );
      final right = LiteralInteger(5);
      final includes = Includes(operand: [left, right]);
      final result = await includes.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test('define "IncludesIsNull": { 1, 3, 5, null } includes null', () async {
      final left = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralNull(),
        ],
      );
      final right = LiteralNull();
      final includes = Includes(operand: [left, right]);
      final result = await includes.execute({});
      expect(result, isNull);
    });
    test('define "IncludesIsFalse": { 1, 3 } includes { 1, 3, 5 }', () async {
      final left = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
        ],
      );
      final right = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
        ],
      );
      final includes = Includes(operand: [left, right]);
      final result = await includes.execute({});
      expect(result, equals(CqlBoolean(false)));
    });
    test('define "IncludesIsAlsoNull": null includes { 1, 3, 5 }', () async {
      final left = LiteralNull();
      final right = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
        ],
      );
      final includes = Includes(operand: [left, right]);
      final result = await includes.execute({});
      expect(result, isNull);
    });
  });
}
