import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// A String literal is a System String (CqlString) since 2026-10-06; the
/// places that read a string by casting to Dart String followed: a Code
/// instance's components, a Time instance, and `as String`.
void main() {
  test("'hello' as String keeps the string", () async {
    final library = libraryFromCql('''
library T
define "S": 'hello' as String
define "C": Code { code: 'x', system: 'http://s', display: 'd' }
define "T": Time { value: '10:30:00' }
''');
    final result = await library.execute() as Map<String, dynamic>;
    expect(result['S'], CqlString('hello'));
    final code = result['C'] as CqlCode;
    expect(code.code, 'x');
    expect(code.system, 'http://s');
    expect(code.display, 'd');
  });
}
