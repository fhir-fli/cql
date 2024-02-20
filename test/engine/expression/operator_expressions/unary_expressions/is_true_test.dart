import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IsTrue', () {
    test('execute', () {
      final isFalse = IsTrue(operand: LiteralBoolean(value: true));
      final result = isFalse.execute({});
      expect(result, FhirBoolean(true));
    });
    test('toJson', () {
      // ignore: prefer_const_constructors
      final isFalse = IsTrue(operand: LiteralBoolean(value: false));
      final json = isFalse.toJson();
      final expectedJson = <String, dynamic>{
        'type': 'IsTrue',
        'operand': LiteralBoolean(value: false).toJson(),
      };

      expect(json, expectedJson);
    });
  });
}
