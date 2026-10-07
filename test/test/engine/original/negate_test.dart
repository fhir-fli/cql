import 'package:cql/src/internal.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

/// Grey's original engine tests for `negate` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 5 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Negate', () {
    test('''define "IntegerNegate": 3 // -3''', () async {
      final input = LiteralInteger(3);
      final result = Negate(operand: input);
      expect(await result.execute({}), CqlInteger(-3));
    });
    test('''define "LongNegate": 3L // -3L''', () async {
      final input = LiteralLong(BigInt.from(3));
      final result = Negate(operand: input);
      expect(await result.execute({}), CqlLong.fromNum(-3));
    });
    test('''define "DecimalNegate": -(-3.3) // 3.3''', () async {
      final input = LiteralDecimal(-3.3);
      final result = Negate(operand: input);
      expect(await result.execute({}), CqlDecimal(3.3));
    });
    test("""define "QuantityNegate": 3.3 'mg' // -3.3 'mg'""", () async {
      final input = LiteralQuantity(LiteralDecimal(3.3), unit: 'mg');
      final result = Negate(operand: input);
      expect(
        await result.execute({}),
        ValidatedQuantity.fromString("-3.3 'mg'"),
      );
    });
    test('''define "NegateIsNull": -(null as Integer)''', () async {
      final input =
          As(asType: QName.fromElmType('Integer'), operand: LiteralNull());
      final result = Negate(operand: input);
      expect(await result.execute({}), isNull);
    });
  });
}
