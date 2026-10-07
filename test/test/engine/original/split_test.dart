import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `split` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('split', () {
    test("""define "SplitFound": Split('A B C', ' ') // { 'A', 'B', 'C' }""",
        () async {
      final string = LiteralString('A B C');
      final separator = LiteralString(' ');
      final split = Split(stringToSplit: string, separator: separator);
      final result = await split.execute({});
      // A System String (every string operator answers CqlString, 2026-10-06).
      expect(result, [CqlString('A'), CqlString('B'), CqlString('C')]);
    });
    test("""define "SplitNotFound": Split('A B C', ',') // { 'A B C' }""",
        () async {
      final string = LiteralString('A B C');
      final separator = LiteralString(',');
      final split = Split(stringToSplit: string, separator: separator);
      final result = await split.execute({});
      expect(result, [CqlString('A B C')]);
    });
    test("""define "SplitIsNull": Split(null, ' ') // null""", () async {
      final string = LiteralNull();
      final separator = LiteralString(' ');
      final split = Split(stringToSplit: string, separator: separator);
      final result = await split.execute({});
      expect(result, null);
    });
  });
}
