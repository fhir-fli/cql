import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `flatten` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 2 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('flatten', () {
    test(
        'define "Flatten": flatten { { 1, 2 }, { 3, 4, 5 } } // { 1, 2, 3, 4, 5 }',
        () async {
      final list1 = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(2),
        ],
      );
      final list2 = ListExpression(
        element: [
          LiteralInteger(3),
          LiteralInteger(4),
          LiteralInteger(5),
        ],
      );
      final flatten = Flatten(operand: ListExpression(element: [list1, list2]));
      final result = await flatten.execute({});
      expect(
        result,
        equals([
          CqlInteger(1),
          CqlInteger(2),
          CqlInteger(3),
          CqlInteger(4),
          CqlInteger(5),
        ]),
      );
    });
    test('define "FlattenIsNull": flatten null', () async {
      final flatten = Flatten(operand: LiteralNull());
      final result = await flatten.execute({});
      expect(result, isNull);
    });
  });
}
