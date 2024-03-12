import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Predecessor', () {
    test("""define "IntegerPredecessor": predecessor of 100 // 99""", () {
      final input = LiteralInteger(value: 100);
      final output = Predecessor(operand: input);
      expect(output.execute({}), equals(FhirInteger(99)));
    });
    test("""define "LongPredecessor": predecessor of 100L // 99L""", () {
      final input = LiteralLong(value: BigInt.from(100));
      final output = Predecessor(operand: input);
      expect(output.execute({}), equals(FhirInteger64(99)));
    });
    test("""define "DecimalPredecessor": predecessor of 1.0 // 0.99999999""",
        () {
      final input = LiteralDecimal(value: 1.0);
      final output = Predecessor(operand: input);
      expect(output.execute({}), equals(FhirDecimal(0.99999999)));
    });
    test(
        """define "DatePredecessor": predecessor of @2014-01-01 // @2013-12-31""",
        () {
      final input = LiteralDate(value: '2014-01-01');
      final output = Predecessor(operand: input);
      expect(output.execute({}), equals(FhirDate('2013-12-31')));
    });
    test("""define "PredecessorIsNull": predecessor of (null as Quantity)""",
        () {
      final input = As(resultTypeName: 'Quantity', operand: LiteralNull());
      final output = Predecessor(operand: input);
      expect(output.execute({}), equals(null));
    });
  });
}
