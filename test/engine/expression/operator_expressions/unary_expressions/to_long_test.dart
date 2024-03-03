import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ToLong', () {
    test('''define "IsValid": ToLong('-1')''', () {
      final input = LiteralString(value: '-1');
      final toLong = ToLong(operand: input);
      final result = FhirInteger64(-1);
      expect(toLong.execute({}), result);
    });
    test('''define "IsNull": ToLong('one')''', () {
      final input = LiteralString(value: 'one');
      final toLong = ToLong(operand: input);
      const result = null;
      expect(toLong.execute({}), result);
    });
  });
}
