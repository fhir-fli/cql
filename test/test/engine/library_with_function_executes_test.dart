import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:test/test.dart';

/// A library that declares a function executes: the FunctionDef is not a
/// statement with a value (ELM 04, FunctionDef: "defines a named function
/// that can be invoked by any expression in the artifact"), so library
/// execution skips it and FunctionRef evaluates it where it is called.
/// Until 2026-10-06 every such library threw a Map cast error from
/// ExpressionDefs.execute.
void main() {
  test('a library with a function executes, and the call evaluates', () async {
    final library = libraryFromCql('''
library T
define function AddOne(x Integer): x + 1
define function Twice(x Integer): x * 2
define "A": AddOne(5)
define "B": Twice(AddOne(1))
''');
    final result = await library.execute() as Map<String, dynamic>;
    expect(result['A'].toString(), '6');
    expect(result['B'].toString(), '4');
    expect(result.containsKey('AddOne'), isFalse);
  });

  test('a fluent function call evaluates', () async {
    final library = libraryFromCql('''
library T
define fluent function double(x Integer): x * 2
define "A": 5.double()
define "B": (2 + 3).double().double()
''');
    final result = await library.execute() as Map<String, dynamic>;
    expect(result['A'].toString(), '10');
    expect(result['B'].toString(), '20');
  });
}
