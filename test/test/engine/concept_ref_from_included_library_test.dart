import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// `Common.testConcept` resolves the concept, and its codes, in the
/// included library (ELM 04, ConceptRef.libraryName). Until 2026-10-07 the
/// library name was ignored and the lookup answered null (cql-engine
/// IncludedConceptRefTest).
void main() {
  test('a concept of an included library resolves with its codes', () async {
    final manager = LibraryManager();
    final common = libraryFromCql('''
library Common
codesystem testSystem: 'http://system.org' version '1'
code testCode: 'code-value' from testSystem display 'code-display'
concept testConcept: { testCode } display 'concept-display'
''');
    manager.addLibrary('Common', '', common);
    final main = libraryFromCql('''
library Main
include Common called Common
define "X": Common.testConcept
''', libraryManager: manager);
    final r = await main.execute() as Map<String, dynamic>;
    final concept = r['X'] as CqlConcept;
    expect(concept.display, 'concept-display');
    expect(concept.codes.single.code, 'code-value');
    expect(concept.codes.single.system, 'http://system.org');
  });
}
