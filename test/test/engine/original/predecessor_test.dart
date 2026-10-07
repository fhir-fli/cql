import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `predecessor` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// The 2026-02-10 consolidation ("~75 unit tests into 8 spec-aligned files")
/// dropped these 5 cases; the value types are the cql engine's
/// (CqlBoolean for FhirBoolean, and so on), the titles and assertions are
/// as written.
void main() {
  group('Predecessor', () {
    test('''define "IntegerPredecessor": predecessor of 100 // 99''', () async {
      final input = LiteralInteger(100);
      final output = Predecessor(operand: input);
      expect(await output.execute({}), equals(CqlInteger(99)));
    });
    test('''define "LongPredecessor": predecessor of 100L // 99L''', () async {
      final input = LiteralLong(BigInt.from(100));
      final output = Predecessor(operand: input);
      expect(await output.execute({}), equals(CqlLong.fromNum(99)));
    });
    test('''define "DecimalPredecessor": predecessor of 1.0 // 0.99999999''',
        () async {
      final input = LiteralDecimal(1.0);
      final output = Predecessor(operand: input);
      expect(await output.execute({}), equals(CqlDecimal(0.99999999)));
    });
    test(
        '''define "DatePredecessor": predecessor of @2014-01-01 // @2013-12-31''',
        () async {
      final input = LiteralDate('2014-01-01');
      final output = Predecessor(operand: input);
      expect(
        await output.execute({}),
        equals(CqlDate.fromString('2013-12-31')),
      );
    });
    test('''define "PredecessorIsNull": predecessor of (null as Quantity)''',
        () async {
      final input = As(resultTypeName: 'Quantity', operand: LiteralNull());
      final output = Predecessor(operand: input);
      expect(await output.execute({}), equals(null));
    });
  });
}
