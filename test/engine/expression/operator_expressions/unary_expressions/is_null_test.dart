import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('isNull', () {
    test('IsTrue', () {
      final isTrue = IsNull(operand: LiteralNull());
      expect(isTrue.execute({}), equals(FhirBoolean(true)));
    });
    test('IsFalse', () {
      final isFalse = IsNull(operand: LiteralBoolean(value: true));
      expect(isFalse.execute({}), equals(FhirBoolean(false)));
    });
  });
}
