import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// `+` over strings concatenates (CQL reference 09-b, Concatenate) and
/// answers a System String, like `&` and Concatenate; until 2026-10-06 it
/// answered a bare Dart String.
void main() {
  test("'Hello, ' + 'CQL!' is a CqlString", () async {
    final library = libraryFromCql('''
library T
define "S": 'Hello, ' + 'CQL!'
''');
    final result = await library.execute() as Map<String, dynamic>;
    expect(result['S'], CqlString('Hello, CQL!'));
    expect(Add.add(CqlString('a'), CqlString('b')), CqlString('ab'));
    expect(Add.add('a', CqlString('b')), CqlString('ab'));
  });
}
