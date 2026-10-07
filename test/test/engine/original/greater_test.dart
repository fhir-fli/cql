import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `greater` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 6 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Greater', () {
    test('''define "DateTimeGreaterIsNull": @2012-01-01 > @2012-01-01T12''',
        () async {
      final left = LiteralDateTime('2012-01-01');
      final right = LiteralDateTime('2012-01-01T12');
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(null));
    });
    test('''define "IntegerGreaterIsTrue": 4 > 3''', () async {
      final left = LiteralInteger(4);
      final right = LiteralInteger(3);
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test('''define "LongGreaterIsTrue": 4L > 3L''', () async {
      final left = LiteralLong(BigInt.from(4));
      final right = LiteralLong(BigInt.from(3));
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(CqlBoolean(true)));
    });
    test('''define "DecimalGreaterIsFalse": 3.5 > 3.5''', () async {
      final left = LiteralDecimal(3.5);
      final right = LiteralDecimal(3.5);
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(CqlBoolean(false)));
    });
    test("""define "QuantityGreaterIsNull": 3.6 'cm2' > 3.5 'cm'""", () async {
      final left = LiteralQuantity(LiteralDecimal(3.6), unit: 'cm2');
      final right = LiteralQuantity(LiteralDecimal(3.5), unit: 'cm');
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(null));
    });
    test('''define "NullGreaterIsNull": null > 5''', () async {
      final left = LiteralNull();
      final right = LiteralInteger(5);
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(null));
    });
  });
}
