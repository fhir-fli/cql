import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Reading an element of a System composite answers a System value (CQL
/// reference 09-b, Types). Until 2026-10-07 `strength.value` on a Quantity
/// literal went through the model resolver and came back as a FHIR decimal
/// (Exercises03 "If Conditional").
void main() {
  test('Quantity, Code, Concept and Interval elements', () async {
    final library = libraryFromCql('''
library T
define "strength": 10.0 'mg/mL'
define "Lt": "strength".value < 0.1
define "Unit": "strength".unit
define "C": Code { code: 'x', system: 'http://s' }
define "CodeOf": "C".code
define "I": Interval[1, 5]
define "High": "I".high
define "Closed": "I".highClosed
''');
    final r = await library.execute() as Map<String, dynamic>;
    expect(r['Lt'], CqlBoolean(false));
    expect(r['Unit'], CqlString('mg/mL'));
    expect(r['CodeOf'], CqlString('x'));
    expect(r['High'], CqlInteger(5));
    expect(r['Closed'], CqlBoolean(true));
  });
}
