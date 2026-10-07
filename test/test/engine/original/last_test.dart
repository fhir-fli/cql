import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `last` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 2 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('last', () {
    test('define "Last5": Last({ 1, 3, 5 }) // 5', () async {
      final source = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
        ],
      );
      final last = Last(source: source);
      final result = await last.execute({});
      expect(result, equals(CqlInteger(5)));
    });
    test('define "LastIsNull": Last(null)', () async {
      final last = Last(source: LiteralNull());
      final result = await last.execute({});
      expect(result, isNull);
    });
  });
}
