import 'dart:io';

import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// `libraryFromCql` records translation errors on the library's
/// annotations instead of throwing (its contract, mirroring the reference
/// translator). Until 2026-10-06 two cases threw out of it: a date,
/// datetime or time literal no calendar holds (`@T24:59:59.999`,
/// CqlTypesTest.cql line 103, marked `invalid: 'semantic'` there), and a
/// node the parser created while recovering from a syntax error
/// (`timezone from …`, `@T06Z`, CqlDateTimeOperatorsTest.cql lines 427
/// and 703, marked `invalid: true`), which a visitor cast to an expression.
void main() {
  List<CqlToElmError> errorsOf(CqlLibrary library) =>
      (library.annotation ?? []).whereType<CqlToElmError>().toList();

  group('an impossible literal is an error annotation and a Null', () {
    for (final (literal, kind) in [
      ('@T24:59:59.999', 'time'),
      ('@T23:60:00', 'time'),
      ('@2024-02-30', 'date'),
      ('@2024-13-01T10:00', 'datetime'),
    ]) {
      test(literal, () async {
        final library = libraryFromCql('''
library L version '1'
define "X": $literal
define "Y": 1 + 1
''');
        final errors = errorsOf(library);
        expect(errors, hasLength(1), reason: literal);
        expect(errors.single.message, contains('Invalid $kind literal'));
        expect(errors.single.errorSeverity, ErrorSeverity.error);
        expect(errors.single.startLine, 2);
        final x = library.statements!.def.singleWhere((d) => d.name == 'X');
        expect(x.expression, isA<LiteralNull>());
        final results = await library.execute() as Map<String, dynamic>;
        expect(results['X'], isNull);
        expect(results['Y'], CqlInteger(2));
      });
    }
  });

  test('a syntax error leaves the rest of the library translated', () async {
    final library = libraryFromCql('''
library L version '1'
define "Bad": hours between @T06Z and @T07:00:00Z
define "Good": 2 * 3
''');
    final errors = errorsOf(library);
    expect(errors, isNotEmpty);
    expect(errors.first.errorType, ErrorType.syntax);
    final results = await library.execute() as Map<String, dynamic>;
    expect(results['Good'], CqlInteger(6));
  });

  group('the two CQL test sources that could not translate', () {
    for (final (file, atLeast) in [
      ('CqlDateTimeOperatorsTest.cql', 2), // two syntax errors (427, 703)
      ('CqlTypesTest.cql', 4), // four impossible time literals (103-115)
    ]) {
      test('$file translates, with its invalid cases recorded', () {
        final library = libraryFromCql(
          File('test/test/cql_to_elm_tests/$file').readAsStringSync(),
        );
        expect(
          errorsOf(library).length,
          greaterThanOrEqualTo(atLeast),
          reason: '$file: that many of its invalid cases are literals',
        );
        expect(library.statements!.def.length, greaterThan(5));
      });
    }
  });
}
