import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// `'ABC'[0]` indexes the String literal, a System String since 2026-10-06;
/// the indexer answered null for a CqlString until 2026-10-07.
void main() {
  test("'ABC'[0] is 'A', out of range is null", () async {
    final library = libraryFromCql('''
library T
define "A": 'ABC'[0]
define "C": 'ABC'[2]
define "N": 'ABC'[3]
''');
    final r = await library.execute() as Map<String, dynamic>;
    expect(r['A'], CqlString('A'));
    expect(r['C'], CqlString('C'));
    expect(r['N'], isNull);
  });
}
