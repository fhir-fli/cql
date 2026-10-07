import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `duration_between` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 4 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('DurationBetween', () {
    test(
        '''define "DurationInMonths": months between @2012-01-01 and @2012-02-01 // 1''',
        () async {
      final low = LiteralDate('2012-01-01');
      final high = LiteralDate('2012-02-01');
      final duration = DurationBetween(
        precision: CqlDateTimePrecision.month,
        operand: [low, high],
      );
      expect(await duration.execute({}), CqlInteger(1));
    });
    test(
        '''define "DurationInMonths": months between @2012-01-01T01:01:01 and @2012-02-01:01:01:01 // 1''',
        () async {
      final low = LiteralDateTime('2012-01-01T01:01:01');
      final high = LiteralDateTime('2012-02-01T01:01:01');
      final duration = DurationBetween(
        precision: CqlDateTimePrecision.month,
        operand: [low, high],
      );
      expect(await duration.execute({}), CqlInteger(1));
    });
    test(
        '''define "DurationInHours": hours between @2012-01-01T23:00:00 and @2012-01-02T02:00:00 // 3''',
        () async {
      final low = LiteralDateTime('2012-01-01T23:00:00');
      final high = LiteralDateTime('2012-01-02T02:00:00');
      final duration = DurationBetween(
        precision: CqlDateTimePrecision.hour,
        operand: [low, high],
      );
      expect(await duration.execute({}), CqlInteger(3));
    });
    test(
      '''define "UncertainDurationInMonths": months between @2012-01-02 and @2012 // [0, 10]''',
      () async {},
    );
    test('''define "DurationIsNull": months between @2012-01-01 and null''',
        () async {
      final low = LiteralDate('2012-01-01');
      final high = LiteralNull();
      final duration = DurationBetween(
        precision: CqlDateTimePrecision.month,
        operand: [low, high],
      );
      expect(await duration.execute({}), null);
    });
  });
}
