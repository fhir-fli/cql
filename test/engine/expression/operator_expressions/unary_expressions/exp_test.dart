import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Exp', () {
    test('define "IntegerExp": Exp(0) // 1.0', () {
      final operator = LiteralInteger(value: 0);
      final result = Exp.compareFirst(first: operator);
      expect(result.execute({}), equals(FhirDecimal(1.0)));
    });
    test('define "LongExp": Exp(0L) // 1.0', () {
      final operator = LiteralLong(value: BigInt.from(0));
      final result = Exp.compareFirst(first: operator);
      expect(result.execute({}), equals(FhirDecimal(1.0)));
    });
    test('define "DecimalExp": Exp(-0.0) // 1.0', () {
      final operator = LiteralDecimal(value: -0.0);
      final result = Exp.compareFirst(first: operator);
      expect(result.execute({}), equals(FhirDecimal(1.0)));
    });
    test('define "QuantityExpIsNull": Exp(null as Decimal)', () {
      final operator = LiteralNull();
      final result = Exp.compareFirst(first: operator);
      expect(result.execute({}), equals(null));
    });
  });
}
