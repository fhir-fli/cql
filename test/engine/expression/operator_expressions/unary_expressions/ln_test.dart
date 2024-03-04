import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Ln', () {
    test('define "IntegerLn": Ln(1) // 0.0', () {
      final operator = LiteralInteger(value: 1);
      final result = Ln.compareFirst(first: operator);
      expect(result.execute({}), equals(FhirDecimal(0.0)));
    });
    test('define "LongLn": Ln(1L) // 0.0', () {
      final operator = LiteralLong(value: BigInt.from(1));
      final result = Ln.compareFirst(first: operator);
      expect(result.execute({}), equals(FhirDecimal(0.0)));
    });
    test('define "DecimalLn": Ln(1.0) // 0.0', () {
      final operator = LiteralDecimal(value: 1.0);
      final result = Ln.compareFirst(first: operator);
      expect(result.execute({}), equals(FhirDecimal(0.0)));
    });
    test('define "QuantityLnIsNull": Ln(null as Decimal)', () {
      final operator = LiteralNull();
      final result = Ln.compareFirst(first: operator);
      expect(result.execute({}), equals(null));
    });
  });
}
