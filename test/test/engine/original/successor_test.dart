import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `successor` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// The 2026-02-10 consolidation ("~75 unit tests into 8 spec-aligned files")
/// dropped these 5 cases; the value types are the cql engine's
/// (CqlBoolean for FhirBoolean, and so on), the titles and assertions are
/// as written.
void main() {
  group('Successor', () {
    test('''define "IntegerSuccessor": successor of 100 // 101''', () async {
      final input = LiteralInteger(100);
      final result = Successor(operand: input);
      expect(await result.execute({}), CqlInteger(101));
    });
    test('''define "LongSuccessor": successor of 100L // 101L''', () async {
      final input = LiteralLong(BigInt.from(100));
      final result = Successor(operand: input);
      expect(await result.execute({}), CqlLong.fromNum(101));
    });
    test('''define "DecimalSuccessor": successor of 1.0 // 1.00000001''',
        () async {
      final input = LiteralDecimal(1.0);
      final result = Successor(operand: input);
      expect(await result.execute({}), CqlDecimal(1.00000001));
    });
    test('''define "DateSuccessor": successor of @2014-01-01 // @2014-01-02''',
        () async {
      final input = LiteralDate('2014-01-01');
      final result = Successor(operand: input);
      expect(await result.execute({}), CqlDate.fromString('2014-01-02'));
    });
    test('''define "SuccessorIsNull": successor of (null as Quantity)''',
        () async {
      final input = As(resultTypeName: 'Quantity', operand: LiteralNull());
      final result = Successor(operand: input);
      expect(await result.execute({}), null);
    });
  });
}
