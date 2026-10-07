import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `intersect` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 2 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Intersect', () {
    test(
        '''define "Intersect": Interval[1, 5] intersect Interval[3, 7] // Interval[3, 5]''',
        () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(1),
        lowClosed: LiteralBoolean(true),
        high: LiteralInteger(5),
        highClosed: LiteralBoolean(true),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(3),
        lowClosed: LiteralBoolean(true),
        high: LiteralInteger(7),
        highClosed: LiteralBoolean(true),
      );
      final result = Intersect(operand: [left, right]);
      expect(
        await result.execute({}),
        equals(
          CqlInterval<CqlInteger>(
            low: CqlInteger(3),
            lowClosed: true,
            high: CqlInteger(5),
            highClosed: true,
          ),
        ),
      );
    });
    test(
        '''define "IntersectIsNull": Interval[3, 5] intersect (null as Interval<Integer>)''',
        () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(3),
        lowClosed: LiteralBoolean(true),
        high: LiteralInteger(5),
        highClosed: LiteralBoolean(true),
      );
      final right =
          As(operand: LiteralNull(), resultTypeName: 'Interval<Integer>');
      final result = Intersect(operand: [left, right]);
      expect(await result.execute({}), equals(null));
    });
  });
}
