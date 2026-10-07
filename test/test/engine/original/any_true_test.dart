import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `any_true` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 4 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('anyTrue', () {
    test('define "AnyTrueIsTrue": AnyTrue({ true, false, null })', () async {
      final list = ListExpression(
        element: [
          LiteralBoolean(true),
          LiteralBoolean(false),
          LiteralNull(),
        ],
      );
      final anyTrue = AnyTrue(source: list);
      final result = await anyTrue.execute({});
      expect(result, CqlBoolean(true));
    });
    test('define "AnyTrueIsFalse": AnyTrue({ false, false, null })', () async {
      final list = ListExpression(
        element: [
          LiteralBoolean(false),
          LiteralBoolean(false),
          LiteralNull(),
        ],
      );
      final anyTrue = AnyTrue(source: list);
      final result = await anyTrue.execute({});
      expect(result, CqlBoolean(false));
    });
    test('define "AnyTrueIsAlsoFalse": AnyTrue({ null, null, null })',
        () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final anyTrue = AnyTrue(source: list);
      final result = await anyTrue.execute({});
      expect(result, CqlBoolean(false));
    });
    test('define "AnyTrueIsFalseWhenNull": AnyTrue(null)', () async {
      final anyTrue = AnyTrue(source: LiteralNull());
      final result = await anyTrue.execute({});
      expect(result, CqlBoolean(false));
    });
  });
}
