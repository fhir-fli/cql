import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// `Length(null as Integer)` is Length over a list: the single value is
/// promoted with ToList (CQL Developer's Guide, Promotion), and Length of
/// a null list is 0 (09-b, Length). A String stays Length(String).
void main() {
  test('Length of a promoted null is 0; of a string its characters', () async {
    final library = libraryFromCql('''
library T
define "N": Length(null as Integer)
define "S": Length('abc')
define "L": Length({ 1, 2 })
define "NL": Length(null as List<Integer>)
''');
    final r = await library.execute() as Map<String, dynamic>;
    expect(r['N'], CqlInteger(0));
    expect(r['S'], CqlInteger(3));
    expect(r['L'], CqlInteger(2));
    expect(r['NL'], CqlInteger(0));
    final elm = library.toJson();
    expect('$elm', contains('ToList'));
  });
}
