import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `less_or_equal` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 6 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('LessOrEqual', () {
    test(
        '''define "DateTimeLessOrEqualIsNull": @2012-01-01 <= @2012-01-01T12''',
        () async {
      final left = LiteralDateTime('2012-01-01');
      final right = LiteralDateTime('2012-01-01T12');
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(null));
    });
    test('''define "IntegerLessOrEqualIsTrue": 4 <= (2 + 2)''', () async {
      final left = LiteralInteger(4);
      final right = Add(
        operand: [
          LiteralInteger(2),
          LiteralInteger(2),
        ],
      );
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test('''define "LongLessOrEqualIsTrue": 4L <= (2L + 2L)''', () async {
      final left = LiteralLong(BigInt.from(4));
      final right = Add(
        operand: [
          LiteralLong(BigInt.from(2)),
          LiteralLong(BigInt.from(2)),
        ],
      );
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test('''define "DecimalLessOrEqualIsFalse": 3.5 <= (3.5 - 0.1)''',
        () async {
      final left = LiteralDecimal(3.5);
      final right = Subtract(
        operand: [
          LiteralDecimal(3.5),
          LiteralDecimal(0.1),
        ],
      );
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(CqlBoolean(false)));
    });
    test("""define "QuantityLessOrEqualIsNull": 3.6 'cm2' <= 3.6 'cm'""",
        () async {
      final left = LiteralQuantity(LiteralDecimal(3.6), unit: 'cm2');
      final right = LiteralQuantity(LiteralDecimal(3.6), unit: 'cm');
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(null));
    });
    test('''define "NullLessOrEqualIsNull": null <= 5''', () async {
      final left = LiteralNull();
      final right = LiteralInteger(5);
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(null));
    });
  });
}
