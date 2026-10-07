import 'dart:convert';

import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:test/test.dart';

/// How the reference translator types bare nulls and Integer literals
/// (measured 2026-10-06 over the 31 reference ELM files): a null meeting a
/// typed sibling is `As(Null, asType: T)`; a null under a logical operator
/// is Boolean whatever the sibling; a null on the list side of
/// `contains`/`in` is the list type; an Integer where a Decimal is required
/// is wrapped in ToDecimal; an Integer literal keeps its source text; an
/// Integer list under Avg is promoted through a query returning
/// ToDecimal(X) while a Decimal list stays bare; and two lists of
/// different element types under `union` are cast to the list of their
/// choice, while same-typed lists stay as written.
void main() {
  Map<String, dynamic> define(String body, [String? using]) {
    final lib = libraryFromCql('''
library L version '1'
${using ?? ''}
define "X": $body
''');
    return jsonDecode(jsonEncode(lib.statements!.def.last.expression!.toJson()))
        as Map<String, dynamic>;
  }

  test('a null against a typed sibling', () {
    final e = define("null = 'a'");
    expect((e['operand'] as List)[0], {
      'type': 'As',
      'operand': {'type': 'Null'},
      'asType': '{urn:hl7-org:elm-types:r1}String',
    });
  });

  test('nulls under logical operators are Boolean', () {
    final e = define('null and null');
    for (final o in e['operand'] as List) {
      expect((o as Map)['asType'], '{urn:hl7-org:elm-types:r1}Boolean');
    }
    final n = define('not null');
    expect(
      (n['operand'] as Map)['asType'],
      '{urn:hl7-org:elm-types:r1}Boolean',
    );
  });

  test('a null on the list side of contains is the list type', () {
    final e = define("null contains 'a'");
    final listSide = (e['operand'] as List)[0] as Map;
    expect(listSide['type'], 'As');
    expect((listSide['asTypeSpecifier'] as Map)['type'], 'ListTypeSpecifier');
  });

  test('a mixed list keeps its null bare; a uniform one types it', () {
    final mixed = define("{ 1, 'abc', null }");
    expect(((mixed['element'] as List)[2] as Map)['type'], 'Null');
    final uniform = define('{ 1, 2, null }');
    expect(((uniform['element'] as List)[2] as Map)['type'], 'As');
  });

  test('an Integer where a Decimal is required', () {
    expect((define('Ceiling(1)')['operand'] as Map)['type'], 'ToDecimal');
    expect(
      ((define('1.0 > 2')['operand'] as List)[1] as Map)['type'],
      'ToDecimal',
    );
    final div = define('1 / null');
    expect(((div['operand'] as List)[0] as Map)['type'], 'ToDecimal');
    expect(
      ((div['operand'] as List)[1] as Map)['asType'],
      '{urn:hl7-org:elm-types:r1}Decimal',
    );
    expect(
      ((define("10 'g' / 5")['operand'] as List)[1] as Map)['type'],
      'ToQuantity',
    );
    expect(
      (define('DateTime(2014, 1, 1, 0, 0, 0, 0, 1)')['timezoneOffset']
          as Map)['type'],
      'ToDecimal',
    );
  });

  test('an Integer literal keeps its source text', () {
    final e = define('DateTime(2014, 01, 01)');
    expect((e['month'] as Map)['value'], '01');
  });

  test('Avg over an Integer list goes through a query; a Decimal list not', () {
    final ints = define('Avg({ 1, 2, 3, null })');
    expect((ints['source'] as Map)['type'], 'Query');
    final decimals = define('Avg({ 1.0, 2.0, 3.0 })');
    expect((decimals['source'] as Map)['type'], 'List');
  });

  test('set operators: mixed lists cast to a choice, same-typed as written',
      () {
    final mixed = define("{ 1, 2, 3 } union { 'a', 'b', 'c' }");
    for (final o in mixed['operand'] as List) {
      expect((o as Map)['type'], 'As');
      final spec = o['asTypeSpecifier'] as Map;
      expect((spec['elementType'] as Map)['type'], 'ChoiceTypeSpecifier');
    }
    final same = define('{ 1, 2 } except { 2 }');
    for (final o in same['operand'] as List) {
      expect((o as Map)['type'], 'List');
    }
    final empty = define('{} except {}');
    for (final o in empty['operand'] as List) {
      expect((o as Map)['type'], 'List');
    }
  });
}
