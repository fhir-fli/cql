import 'package:cql/src/internal.dart';
import 'package:test/test.dart' hide Skip;

/// Grey's original engine tests for `skip` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 4 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Skip', () {
    test('define "Skip2": Skip({ 1, 2, 3, 4, 5 }, 2) // { 3, 4, 5 }', () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(2),
          LiteralInteger(3),
          LiteralInteger(4),
          LiteralInteger(5),
        ],
      );

      final skipExpr = Skip(
        operand: [
          list,
          LiteralInteger(2),
        ],
      );

      final result = await skipExpr.execute({});
      expect(result, equals([CqlInteger(3), CqlInteger(4), CqlInteger(5)]));
    });
    test('define "SkipNull": Skip({ 1, 3, 5 }, null) // { 1, 3, 5 }', () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
        ],
      );

      final skipExpr = Skip(
        operand: [
          list,
          LiteralNull(),
        ],
      );

      final result = await skipExpr.execute({});
      expect(result, equals([CqlInteger(1), CqlInteger(3), CqlInteger(5)]));
    });
    test('define "SkipEmpty": Skip({ 1, 3, 5 }, -1) // { }', () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
        ],
      );

      final skipExpr = Skip(
        operand: [
          list,
          LiteralInteger(-1),
        ],
      );

      final result = await skipExpr.execute({});
      expect(result, equals([]));
    });
    test('define "SkipIsNull": Skip(null, 2)', () async {
      final skipExpr = Skip(
        operand: [
          LiteralNull(),
          LiteralInteger(2),
        ],
      );

      final result = await skipExpr.execute({});
      expect(result, equals(null));
    });
  });
}
