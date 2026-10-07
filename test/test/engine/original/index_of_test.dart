import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `index_of` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('indexof', () {
    test('define "IndexOfFound": IndexOf({ 1, 3, 5, 7 }, 5) // 2', () async {
      final indexof = IndexOf(
        source: ListExpression(
          element: [
            LiteralInteger(1),
            LiteralInteger(3),
            LiteralInteger(5),
            LiteralInteger(7),
          ],
        ),
        element: LiteralInteger(5),
      );
      final result = await indexof.execute({});
      expect(result, CqlInteger(2));
    });
    test('define "IndexOfNotFound": IndexOf({ 1, 3, 5, 7 }, 4) // -1',
        () async {
      final indexof = IndexOf(
        source: ListExpression(
          element: [
            LiteralInteger(1),
            LiteralInteger(3),
            LiteralInteger(5),
            LiteralInteger(7),
          ],
        ),
        element: LiteralInteger(4),
      );
      final result = await indexof.execute({});
      expect(result, CqlInteger(-1));
    });
    test('define "IndexOfIsNull": IndexOf(null, 4)', () async {
      final indexof = IndexOf(
        source: LiteralNull(),
        element: LiteralInteger(4),
      );
      final result = await indexof.execute({});
      expect(result, isNull);
    });
  });
}
