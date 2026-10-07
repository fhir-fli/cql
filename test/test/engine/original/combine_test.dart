import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `combine` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('combine', () {
    test("""define "CombineList": Combine({ 'A', 'B', 'C' }) // 'ABC'""",
        () async {
      final list = ListExpression(
        element: [
          LiteralString('A'),
          LiteralString('B'),
          LiteralString('C'),
        ],
      );
      final combine = Combine(source: list);
      final result = await combine.execute({});
      expect(result, 'ABC');
    });
    test(
        """define "CombineWithSeparator": Combine({ 'A', 'B', 'C' }, ' ') // 'A B C'""",
        () async {
      final list = ListExpression(
        element: [
          LiteralString('A'),
          LiteralString('B'),
          LiteralString('C'),
        ],
      );
      final combine = Combine(source: list, separator: LiteralString(' '));
      final result = await combine.execute({});
      expect(result, 'A B C');
    });
    test(
        """define "CombineWithNulls": Combine({ 'A', 'B', 'C', null }) // 'ABC'""",
        () async {
      final list = ListExpression(
        element: [
          LiteralString('A'),
          LiteralString('B'),
          LiteralString('C'),
          LiteralNull(),
        ],
      );
      final combine = Combine(source: list);
      final result = await combine.execute({});
      expect(result, 'ABC');
    });
  });
}
