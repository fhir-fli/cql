import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `all_true` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 4 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('allTrue', () {
    test('define "AllTrueIsTrue": AllTrue({ true, null, true })', () async {
      final list = ListExpression(
        element: [
          LiteralBoolean(true),
          LiteralNull(),
          LiteralBoolean(true),
        ],
      );
      final allTrue = AllTrue(source: list);
      final result = await allTrue.execute({});
      expect(result, CqlBoolean(true));
    });
    test('define "AllTrueIsAlsoTrue": AllTrue({ null, null, null })', () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final allTrue = AllTrue(source: list);
      final result = await allTrue.execute({});
      expect(result, CqlBoolean(true));
    });
    test('define "AllTrueIsTrueWhenNull": AllTrue(null)', () async {
      final allTrue = AllTrue(source: LiteralNull());
      final result = await allTrue.execute({});
      expect(result, CqlBoolean(true));
    });
    test('define "AllTrueIsFalse": AllTrue({ true, false, null })', () async {
      final list = ListExpression(
        element: [
          LiteralBoolean(true),
          LiteralBoolean(false),
          LiteralNull(),
        ],
      );
      final allTrue = AllTrue(source: list);
      final result = await allTrue.execute({});
      expect(result, CqlBoolean(false));
    });
  });
}
