import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// CQL Reference (09-b) Appendix B lists the System types; an unqualified
/// name among them resolves to the ELM namespace, before any FHIR type of
/// the same spelling. `Date`, `Long`, `Any`, `CodeSystem` and `Vocabulary`
/// were missing from the table until 2026-10-06.
void main() {
  const systemTypes = [
    'Any', 'Boolean', 'Code', 'CodeSystem', 'Concept', 'Date', 'DateTime',
    'Decimal', 'Long', 'Integer', 'Quantity', 'Ratio', 'String', 'Time',
    'ValueSet', 'Vocabulary', //
  ];

  test('every System type resolves to the ELM namespace', () {
    for (final name in systemTypes) {
      expect(
        QName.parse(name).namespaceURI,
        'urn:hl7-org:elm-types:r1',
        reason: name,
      );
    }
  });

  test('a FHIR spelling still resolves to the FHIR namespace', () {
    expect(QName.parse('date').namespaceURI, 'http://hl7.org/fhir');
    expect(QName.parse('dateTime').namespaceURI, 'http://hl7.org/fhir');
  });

  test('minimum Date translates with the ELM namespace, as the reference', () {
    // CqlArithmeticFunctionsTest.json DateMinValue: valueType
    // {urn:hl7-org:elm-types:r1}Date.
    final library = libraryFromCql('''
library L version '1'
define "D": minimum Date
define "L": maximum Long
''');
    final defs = library.statements!.def;
    final d = defs.singleWhere((x) => x.name == 'D').expression! as MinValue;
    expect(d.valueType.toString(), '{urn:hl7-org:elm-types:r1}Date');
    final l = defs.singleWhere((x) => x.name == 'L').expression! as MaxValue;
    expect(l.valueType.toString(), '{urn:hl7-org:elm-types:r1}Long');
  });
}
