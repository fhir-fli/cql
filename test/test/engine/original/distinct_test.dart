import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `distinct` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 2 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('distinct', () {
    test('define "Distinct": distinct { 1, 3, 3, 5, 5 } // { 1, 3, 5 }',
        () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(5),
        ],
      );
      final distinct = Distinct(operand: list);
      final result = await distinct.execute({});
      expect(result, [
        CqlInteger(1),
        CqlInteger(3),
        CqlInteger(5),
      ]);
    });
    test('define "DistinctIsNull": distinct null // null', () async {
      final distinct = Distinct(operand: LiteralNull());
      final result = await distinct.execute({});
      expect(result, isNull);
    });
  });
}
