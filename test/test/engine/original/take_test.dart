import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `take` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 4 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Take', () {
    test('define "Take2": Take({ 1, 2, 3, 4 }, 2) // { 1, 2 }', () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(2),
          LiteralInteger(3),
          LiteralInteger(4),
        ],
      );

      // Now using the Take class directly
      final takeExpr = Take(
        operand: [
          list,
          LiteralInteger(2),
        ],
      );

      final result = await takeExpr.execute({});
      expect(result, equals([CqlInteger(1), CqlInteger(2)]));
    });
    test('define "TakeTooMany": Take({ 1, 2 }, 3) // { 1, 2 }', () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(2),
        ],
      );

      final takeExpr = Take(
        operand: [
          list,
          LiteralInteger(3),
        ],
      );

      final result = await takeExpr.execute({});
      expect(result, equals([CqlInteger(1), CqlInteger(2)]));
    });
    test('define "TakeEmpty": Take({ 1, 2, 3, 4 }, null) // { }', () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(2),
          LiteralInteger(3),
          LiteralInteger(4),
        ],
      );

      final takeExpr = Take(
        operand: [
          list,
          LiteralNull(),
        ],
      );

      final result = await takeExpr.execute({});
      expect(result, equals([]));
    });
    test('define "TakeIsNull": Take(null, 2)', () async {
      final takeExpr = Take(
        operand: [
          LiteralNull(),
          LiteralInteger(2),
        ],
      );

      final result = await takeExpr.execute({});
      expect(result, equals(null));
    });
  });
}
