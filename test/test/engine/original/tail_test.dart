import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `tail` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Tail', () {
    test('define "Tail234": Tail({ 1, 2, 3, 4 }) // { 2, 3, 4 }', () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(2),
          LiteralInteger(3),
          LiteralInteger(4),
        ],
      );

      final tailExpr = Tail(operand: list);
      final result = await tailExpr.execute({});
      expect(
        result,
        equals([
          CqlInteger(2),
          CqlInteger(3),
          CqlInteger(4),
        ]),
      );
    });
    test('define "TailEmpty": Tail({ }) // { }', () async {
      final list = ListExpression(element: []);

      final tailExpr = Tail(operand: list);
      final result = await tailExpr.execute({});
      expect(result, equals(<dynamic>[]));
    });
    test('define "TailIsNull": Tail(null)', () async {
      final tailExpr = Tail(operand: LiteralNull());
      final result = await tailExpr.execute({});
      expect(result, equals(null));
    });
  });
}
