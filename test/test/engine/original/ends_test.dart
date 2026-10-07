import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `ends` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('ends', () {
    test('define "EndsIsTrue": Interval[0, 5] ends Interval[-1, 5]', () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(0),
        high: LiteralInteger(5),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(-1),
        high: LiteralInteger(5),
      );
      final ends = Ends(operand: [left, right]);
      final result = await ends.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test('define "EndsIsFalse": Interval[-1, 7] ends Interval[0, 7]', () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(-1),
        high: LiteralInteger(7),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(0),
        high: LiteralInteger(7),
      );
      final ends = Ends(operand: [left, right]);
      final result = await ends.execute({});
      expect(result, equals(CqlBoolean(false)));
    });
    test('define "EndsIsNull": Interval[1, 5] ends null', () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(1),
        high: LiteralInteger(5),
      );
      final ends = Ends(operand: [left, LiteralNull()]);
      final result = await ends.execute({});
      expect(result, equals(null));
    });
  });
}
