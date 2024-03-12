import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Ceiling', () {
    test("""define "IntegerCeiling": Ceiling(1) // 1""", () {
      final input = LiteralInteger(value: 1);
      final result = Ceiling(operand: input);
      expect(result.execute({}), equals(FhirInteger(1)));
    });
    test("""define "DecimalCeiling": Ceiling(1.1) // 2""", () {
      final input = LiteralDecimal(value: 1.1);
      final result = Ceiling(operand: input);
      expect(result.execute({}), equals(FhirInteger(2)));
    });
    test("""define "QuantityCeilingIsNull": Ceiling(null as Decimal)""", () {
      final input = LiteralNull();
      final result = Ceiling(operand: input);
      expect(result.execute({}), equals(null));
    });
  });
}
