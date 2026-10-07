import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// A Decimal literal keeps the scale it was written with, so ToString
/// round-trips it (09-b, ToString); the reference engine answers
/// 'hell00.000' for `f2('hell', 0, 0.000)` (CqlFunctionTests).
void main() {
  test('ToString(0.000) is 0.000', () async {
    final library = libraryFromCql('''
library T
define "A": ToString(0.000)
define "B": ToString(1.50)
define "C": 0.000 = 0
define "D": ToString(2.5 + 0.000)
''');
    final r = await library.execute() as Map<String, dynamic>;
    expect(r['A'], CqlString('0.000'));
    expect(r['B'], CqlString('1.50'));
    expect(r['C'], CqlBoolean(true));
    expect(r['D'], CqlString('2.5'));
  });
}
