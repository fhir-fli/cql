import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void startsWithTest() {
  group('StartsWith', () {
    test("""define "StartsWithIsTrue": StartsWith('ABCDE', 'ABC') // true""",
        () {
      final argument = LiteralString(value: 'ABCDE');
      final prefix = LiteralString(value: 'ABC');
      final startsWith = StartsWith(operand: [argument, prefix]);
      final result = startsWith.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "StartsWithIsFalse": StartsWith('ABCDE', 'XYZ') // false""",
        () {
      final argument = LiteralString(value: 'ABCDE');
      final prefix = LiteralString(value: 'XYZ');
      final startsWith = StartsWith(operand: [argument, prefix]);
      final result = startsWith.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "StartsWithIsNull": StartsWith('ABCDE', null) // null""",
        () {
      final argument = LiteralString(value: 'ABCDE');
      final startsWith = StartsWith(operand: [argument, LiteralNull()]);
      final result = startsWith.execute({});
      expect(result, equals(null));
    });
  });
}
