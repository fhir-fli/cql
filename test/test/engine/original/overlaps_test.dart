import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `overlaps` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// The 2026-02-10 consolidation ("~75 unit tests into 8 spec-aligned files")
/// dropped these 2 cases; the value types are the cql engine's
/// (CqlBoolean for FhirBoolean, and so on), the titles and assertions are
/// as written.
void main() {
  group('Overlaps', () {
    test(
        '''define "OverlapsIsTrue": Interval[0, 4] overlaps Interval[1, 4] // true''',
        () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(0),
        high: LiteralInteger(4),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(1),
        high: LiteralInteger(4),
      );
      final result = Overlaps(operand: [left, right]);
      expect(await result.execute({}), equals(CqlBoolean(true)));
    });
    test(
        '''define "OverlapsIsNull": Interval[6, 10] overlaps (null as Interval<Integer>) // null''',
        () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(6),
        high: LiteralInteger(10),
      );
      final right =
          As(operand: LiteralNull(), resultTypeName: 'Interval<Integer>');
      final result = Overlaps(operand: [left, right]);
      expect(await result.execute({}), equals(null));
    });
  });
}
