import 'dart:convert';

import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:test/test.dart';

/// What the reference translator writes (measured 2026-10-06 over the 31
/// reference ELM files of the test suite and the restored harness):
/// `cast x as T` is an As with asTypeSpecifier and strict=true; `x as T`
/// has strict=false and is never wrapped in a FHIRHelpers call by the
/// translator (the model's conversion goes on the operator that needs a
/// System value); an unqualified `T` in `is`/`as` is the operand's choice
/// member of that name when there is one, else the type any specifier
/// resolves to; and `operand.property` inside a function is a Property over
/// an OperandRef.
void main() {
  Map<String, dynamic> define(String cql, String name) {
    final lib = libraryFromCql(cql);
    final def = lib.statements!.def.firstWhere((d) => d.name == name);
    return jsonDecode(jsonEncode(def.expression!.toJson()))
        as Map<String, dynamic>;
  }

  test('cast … as is strict; as is not, and is not wrapped', () {
    final strict = define(
      '''
library L version '1'
define "C": cast 1 as Integer
''',
      'C',
    );
    expect(strict['type'], 'As');
    expect(strict['strict'], isTrue);
    expect(strict['asTypeSpecifier'], isNotNull);
    expect(strict.containsKey('resultTypeSpecifier'), isFalse);

    final loose = define(
      '''
library L version '1'
define "A": 1 as Integer
''',
      'A',
    );
    expect(loose['type'], 'As');
    expect(loose['strict'], isFalse);
    expect(
      (loose['asTypeSpecifier'] as Map)['name'],
      '{urn:hl7-org:elm-types:r1}Integer',
    );
  });

  test('null as Quantity is System.Quantity; O.value as Quantity is FHIR', () {
    final system = define(
      '''
library L version '1'
using FHIR version '4.0.1'
define "N": null as Quantity
''',
      'N',
    );
    expect(
      (system['asTypeSpecifier'] as Map)['name'],
      '{urn:hl7-org:elm-types:r1}Quantity',
    );
    final choice = define(
      '''
library L version '1'
using FHIR version '4.0.1'
define "Q": [Observation] O return O.value is Quantity
''',
      'Q',
    );
    final isNode = (choice['return'] as Map)['expression'] as Map;
    expect(isNode['type'], 'Is');
    expect(
      (isNode['isTypeSpecifier'] as Map)['name'],
      '{http://hl7.org/fhir}Quantity',
    );
  });

  test('a subtraction of two casts converts each at the operator', () {
    final sub = define(
      '''
library L version '1'
using FHIR version '4.0.1'
define "D": [Observation] O return (O.value as Quantity) - (O.value as Quantity)
''',
      'D',
    );
    final expr = (sub['return'] as Map)['expression'] as Map;
    expect(expr['type'], 'Subtract');
    for (final operand in expr['operand'] as List) {
      expect((operand as Map)['type'], 'FunctionRef');
      expect(operand['name'], 'ToQuantity');
      expect(operand['libraryName'], 'FHIRHelpers');
      expect((operand['operand'] as List).single['type'], 'As');
    }
  });

  test('operand.property inside a function is a Property over an OperandRef',
      () {
    final body = define(
      '''
library L version '1'
using FHIR version '4.0.1'
define function Cats(m MedicationRequest): m.category
''',
      'Cats',
    );
    expect(body['type'], 'Property');
    expect(body['path'], 'category');
    expect((body['source'] as Map)['type'], 'OperandRef');
    expect((body['source'] as Map)['name'], 'm');
  });
}
