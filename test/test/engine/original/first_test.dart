import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `first` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 2 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('first', () {
    test('define "First1": First({ 1, 2, 5 }) // 1', () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(2),
          LiteralInteger(5),
        ],
      );
      final first = First(source: list);
      final result = await first.execute({});
      expect(result, equals(CqlInteger(1)));
    });
    test('define "FirstIsNull": First(null)', () async {
      final first = First(source: LiteralNull());
      final result = await first.execute({});
      expect(result, isNull);
    });
  });
}
