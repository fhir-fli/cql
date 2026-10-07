import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// CQL reference 09-b: Successor "If the argument is already the maximum
/// value for the type, a null is returned", Predecessor likewise at the
/// minimum (Integer is 32-bit); Union over lists "If either argument is
/// null, it is considered an empty list". Measured 2026-10-07 with the
/// cql-engine suites: the successor wrapped into a 64-bit int, and two
/// typed-list nulls united to null.
void main() {
  test('successor and predecessor at the bounds are null', () async {
    final library = libraryFromCql('''
library T
define "S": successor of 2147483647
define "P": predecessor of -2147483648
define "SL": successor of 9223372036854775807L
define "Ok": successor of 2147483646
''');
    final r = await library.execute() as Map<String, dynamic>;
    expect(r['S'], isNull);
    expect(r['P'], isNull);
    expect(r['SL'], isNull);
    expect(r['Ok'], CqlInteger(2147483647));
  });
  test('two typed-list nulls unite to an empty list; untyped stays null',
      () async {
    final library = libraryFromCql('''
library T
define "L": null as List<Integer> union null as List<Integer>
define "U": null union null
define "I": null as Interval<Integer> union null as Interval<Integer>
''');
    final r = await library.execute() as Map<String, dynamic>;
    expect(r['L'], isEmpty);
    expect(r['U'], isNull);
    expect(r['I'], isNull);
  });
  test('a property of null is null without a model', () async {
    final library = libraryFromCql('''
library T
define function f(x Tuple { y Integer }): x.y
define "N": f(null)
''');
    final r = await library.execute() as Map<String, dynamic>;
    expect(r['N'], isNull);
  });
}
