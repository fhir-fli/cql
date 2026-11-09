import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// An identifier no declaration resolves is a translation error, as in the
/// reference translator. Each expectation below was measured against the
/// reference (cqframework/cql-translation-service, 2026-11-09) on the same
/// source: "Could not resolve identifier Nope in the current library." for
/// an unknown name, and for an implicit element name in `where` and
/// `return`; no error for a forward reference or for `sort by a`; the
/// define holding the error is emitted as Null.
///
/// Until 2026-11-09 the name became an IdentifierRef with no error and
/// evaluated to null, so a misspelled define silently chose the wrong
/// branch of a `case` (orbweaver CPG probe: a 3 kg neonate got two
/// suppositories instead of one).
void main() {
  List<CqlToElmError> errorsOf(CqlLibrary library) =>
      (library.annotation ?? []).whereType<CqlToElmError>().toList();

  test('a misspelled define is an error and its define is Null', () async {
    final library = libraryFromCql('''
library L version '1'
define "Weight": 3
define "Count":
  case
    when "Weigth" < 10 then 1
    else 2
  end
define "Other": 1 + 1
''');
    final errors = errorsOf(library);
    expect(errors, hasLength(1));
    expect(
      errors.single.message,
      'Could not resolve identifier Weigth in the current library.',
    );
    expect(errors.single.errorType, ErrorType.semantic);
    expect(errors.single.errorSeverity, ErrorSeverity.error);
    expect(errors.single.startLine, 5);
    final count = library.statements!.def.singleWhere((d) => d.name == 'Count');
    expect(count.expression, isA<LiteralNull>());
    final results = await library.execute() as Map<String, dynamic>;
    expect(results['Count'], isNull);
    expect(results['Other'], CqlInteger(2));
  });

  test('an unknown name inside a function body is an error', () {
    final library = libraryFromCql('''
library L version '1'
define function F(p Integer): p + Nope
''');
    expect(
      errorsOf(library).map((e) => e.message),
      ['Could not resolve identifier Nope in the current library.'],
    );
  });

  test('an implicit element name in where and return is an error', () {
    final library = libraryFromCql('''
library L version '1'
define "WhereImplicit": ({ Tuple { a: 2 } }) X where a = 2
define "ReturnImplicit": ({ Tuple { a: 2 } }) X return a
''');
    expect(errorsOf(library).map((e) => (e.startLine, e.message)), [
      (2, 'Could not resolve identifier a in the current library.'),
      (3, 'Could not resolve identifier a in the current library.'),
    ]);
  });

  test('names that do resolve are not errors', () async {
    final library = libraryFromCql('''
library L version '1'
codesystem "LOINC": 'http://loinc.org'
code "Weight code": '29463-7' from "LOINC"
parameter "Limit" Integer default 5
define "Forward": "Later" + 1
define "Later": 2
define "Sorted": ({ Tuple { a: 2 }, Tuple { a: 1 } }) X sort by a
define "Aliased": ({ 1, 2 }) X where X > 1
define "Let": ({ 1 }) X let y: X + 1 return y
define "Param": "Limit" + 1
define "Code": "Weight code"
define function F(p Integer): p + 1
define "Call": F(1)
define "Aggregate": ({ 1, 2, 3 }) N aggregate R starting 1: R * N
''');
    expect(errorsOf(library), isEmpty);
    final results = await library.execute() as Map<String, dynamic>;
    expect(results['Forward'], CqlInteger(3));
    expect(results['Param'], CqlInteger(6));
    expect(results['Call'], CqlInteger(2));
    expect(results['Aggregate'], CqlInteger(6));
  });
}
