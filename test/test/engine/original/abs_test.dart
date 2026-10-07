import 'package:cql/src/internal.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

/// Grey's original engine tests for `abs` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 5 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('Abs', () {
    test('''define "IntegerAbs": Abs(-5) // 5''', () async {
      final input = LiteralInteger(-5);
      final result = Abs(operand: input);
      expect(await result.execute({}), CqlInteger(5));
    });
    test('''define "IntegerAbsIsNull": Abs(null as Integer)''', () async {
      final input =
          As(asType: QName.fromElmType('Integer'), operand: LiteralNull());
      final result = Abs(operand: input);
      expect(await result.execute({}), isNull);
    });
    test('''define "LongAbs": Abs(-5000000L) // 5000000L''', () async {
      final input = LiteralLong(BigInt.from(-5000000));
      final result = Abs(operand: input);
      expect(await result.execute({}), CqlLong.fromNum(5000000));
    });
    test('''define "DecimalAbs": Abs(-5.5) // 5.5''', () async {
      final input = LiteralDecimal(-5.5);
      final result = Abs(operand: input);
      expect(await result.execute({}), CqlDecimal(5.5));
    });
    test("""define "QuantityAbs": Abs(-5.5 'mg') // 5.5 'mg'""", () async {
      final input = LiteralQuantity(LiteralDecimal(-5.5), unit: 'mg');
      final result = Abs(operand: input);
      expect(
        await result.execute({}),
        ValidatedQuantity.fromString("5.5 'mg'"),
      );
    });
  });
}
