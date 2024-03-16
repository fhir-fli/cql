import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void successorTest() {
  group('Successor', () {
    test("""define "IntegerSuccessor": successor of 100 // 101""", () {
      final input = LiteralInteger(value: 100);
      final result = Successor(operand: input);
      expect(result.execute({}), FhirInteger(101));
    });
    test("""define "LongSuccessor": successor of 100L // 101L""", () {
      final input = LiteralLong(value: BigInt.from(100));
      final result = Successor(operand: input);
      expect(result.execute({}), FhirInteger64(101));
    });
    test("""define "DecimalSuccessor": successor of 1.0 // 1.00000001""", () {
      final input = LiteralDecimal(value: 1.0);
      final result = Successor(operand: input);
      expect(result.execute({}), FhirDecimal(1.00000001));
    });
    test("""define "DateSuccessor": successor of @2014-01-01 // @2014-01-02""",
        () {
      final input = LiteralDate(value: '2014-01-01');
      final result = Successor(operand: input);
      expect(result.execute({}), FhirDate('2014-01-02'));
    });
    test("""define "SuccessorIsNull": successor of (null as Quantity)""", () {
      final input = As(resultTypeName: 'Quantity', operand: LiteralNull());
      final result = Successor(operand: input);
      expect(result.execute({}), null);
    });
  });
}
