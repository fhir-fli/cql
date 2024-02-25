import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TruncatedDivide', () {
    test('Evaluates integer truncated division', () {
      final result = TruncatedDivide(
          operand: [LiteralInteger(value: 4), LiteralInteger(value: 2)]);
      expect(result.execute({}), equals(FhirInteger(2)));
    });

    test('Evaluates long truncated division', () {
      final result = TruncatedDivide(operand: [
        LiteralLong(value: BigInt.from(4)),
        LiteralLong(value: BigInt.from(2))
      ]);
      expect(result.execute({}), equals(FhirInteger64(BigInt.from(2))));
    });

    test('Evaluates decimal truncated division', () {
      final result = TruncatedDivide(
          operand: [LiteralDecimal(value: 4.0), LiteralDecimal(value: 2.0)]);
      expect(result.execute({}), equals(FhirDecimal(2.0)));
    });

    test('Evaluates truncated division with null', () {
      final result =
          TruncatedDivide(operand: [LiteralInteger(value: 4), LiteralNull()]);
      expect(result.execute({}), equals(null));
    });
  });
}
