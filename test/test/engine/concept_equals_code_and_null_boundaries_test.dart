import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// `concept = code` converts the Code to a Concept first (Developer's
/// Guide conversion precedence) and then applies tuple equality (09-b,
/// Equal for Codes and Concepts); a closed null interval boundary compares
/// true (09-b, Contains). Both measured wrong on 2026-10-07.
void main() {
  test('a Concept equals the Code it was made of', () async {
    final library = libraryFromCql('''
library T
codesystem "MS": 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus'
code "Married": 'M' from "MS"
define "C": Concept { codes: { Code { code: 'M', system: 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus' } } }
define "Eq": "C" = "Married"
define "EqR": "Married" = "C"
define "Ne": "C" = Code { code: 'S', system: 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus' }
''');
    final r = await library.execute() as Map<String, dynamic>;
    expect(r['Eq'], CqlBoolean(true));
    expect(r['EqR'], CqlBoolean(true));
    expect(r['Ne'], CqlBoolean(false));
  });
  test('a closed null boundary compares true, an open one is unknown',
      () async {
    final library = libraryFromCql('''
library T
define "B": 5 in Interval[null, 10]
define "C": 5 in Interval(null, 10]
define "D": @2018-01-01 in Interval[null as Date, null as Date]
define "N": @2018-01-01 in Interval[null, null]
''');
    final r = await library.execute() as Map<String, dynamic>;
    expect(r['B'], CqlBoolean(true));
    // An open null boundary has no value to compare with: unknown.
    expect(r['C'], isNull);
    expect(r['D'], CqlBoolean(true));
    // Two untyped nulls make a null interval (IntervalExpression), and a
    // point in a null interval is false (09-b, Contains: "If the first
    // argument is null, the result is false"; HL7's conformance suite,
    // CqlIntervalOperatorsTest: `5 in Interval[null, null] // false`). The
    // Java engine's DateOrDateTimeInNullIntervalTest and the JavaScript
    // engine answer null here; Firely's .NET answers true (read
    // 2026-10-07).
    expect(r['N'], CqlBoolean(false));
  });
}
