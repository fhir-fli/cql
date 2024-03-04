import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Log', () {
    test('define "IntegerLog": Log(16, 2) // 4.0', () {
      final operand1 = LiteralInteger(value: 16);
      final operand2 = LiteralInteger(value: 2);
      final log = Log.compareFirst(first: operand1, second: operand2);
      expect(log.execute({}), FhirDecimal(4));
    });
    test('define "LongLog": Log(16L, 2L) // 4.0', () {
      final operand1 = LiteralLong(value: BigInt.from(16));
      final operand2 = LiteralLong(value: BigInt.from(2));
      final log = Log.compareFirst(first: operand1, second: operand2);
      expect(log.execute({}), FhirDecimal(4.0));
    });
    test('define "DecimalLog": Log(100.0, 10.0) // 2.0', () {
      final operand1 = LiteralDecimal(value: 100.0);
      final operand2 = LiteralDecimal(value: 10.0);
      final log = Log.compareFirst(first: operand1, second: operand2);
      expect(log.execute({}), FhirDecimal(2.0));
    });
    test('define "QuantityLogIsNull": Log(null, 10.0)', () {
      final operand1 = LiteralNull();
      final operand2 = LiteralDecimal(value: 10.0);
      final log = Log.compareFirst(first: operand1, second: operand2);
      expect(log.execute({}), null);
    });
  });
}
