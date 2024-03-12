import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Round', () {
    test("""define "IntegerRound": Round(1) // 1""", () {
      final input = LiteralDecimal(value: 1);
      final result = Round(operand: input);
      expect(result.execute({}), FhirDecimal(1));
    });
    test("""define "DecimalRound": Round(3.14159, 3) // 3.142""", () {
      final input = LiteralDecimal(value: 3.14159);
      final precision = LiteralInteger(value: 3);
      final result = Round(operand: input, precision: precision);
      expect(result.execute({}), FhirDecimal(3.142));
    });
    test("""define "RoundIsNull": Round(null)""", () {
      final input = LiteralNull();
      final result = Round(operand: input);
      expect(result.execute({}), isNull);
    });
  });
}
