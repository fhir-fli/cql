import 'package:cql/cql.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReplaceMatches', () {
    test(
        """define "ReplaceMatchesFound": ReplaceMatches('ABCDE', 'C', 'XYZ') // 'ABXYZDE'""",
        () {
      final argument = LiteralString(value: 'ABCDE');
      final pattern = LiteralString(value: 'C');
      final substitution = LiteralString(value: 'XYZ');
      final result = ReplaceMatches(
          operand: [argument, pattern, substitution],
          localId: 'ReplaceMatchesFound');
      expect(result.execute({}), 'ABXYZDE');
    });
    test(
        """define "ReplaceMatchesNotFound": ReplaceMatches('ABCDE', 'XYZ', '123') // 'ABCDE'""",
        () {
      final argument = LiteralString(value: 'ABCDE');
      final pattern = LiteralString(value: 'XYZ');
      final substitution = LiteralString(value: '123');
      final result = ReplaceMatches(
          operand: [argument, pattern, substitution],
          localId: 'ReplaceMatchesNotFound');
      expect(result.execute({}), 'ABCDE');
    });
    test(
        """define "ReplaceMatchesIsNull": ReplaceMatches('ABCDE', 'C', null) // null""",
        () {
      final argument = LiteralString(value: 'ABCDE');
      final pattern = LiteralString(value: 'C');
      final substitution = LiteralNull();
      final result = ReplaceMatches(
          operand: [argument, pattern, substitution],
          localId: 'ReplaceMatchesIsNull');
      expect(result.execute({}), null);
    });
  });
}
