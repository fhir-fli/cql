import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `count` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('count', () {
    test('define "Count5": Count({ 1, 2, 3, 4, 5 }) // 5', () async {
      final list = ListExpression(
        element: [
          LiteralDecimal(1),
          LiteralDecimal(2),
          LiteralDecimal(3),
          LiteralDecimal(4),
          LiteralDecimal(5),
        ],
      );
      final count = Count(source: list);
      final result = await count.execute({});
      expect(result, equals(CqlInteger(5)));
    });
    test('define "Count0": Count({ null, null, null }) // 0', () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final count = Count(source: list);
      final result = await count.execute({});
      expect(result, equals(CqlInteger(0)));
    });
    test('define "CountNull0": Count(null as List<Decimal>) // 0', () async {
      final count = Count(source: LiteralNull());
      final result = await count.execute({});
      expect(result, equals(CqlInteger(0)));
    });
  });
}
