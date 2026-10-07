import 'dart:convert';

import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:test/test.dart';

/// Four more shapes measured against the reference ELM on 2026-10-06:
/// `exists null` types the null as `List<Any>`; `on or after` / `on or
/// before` are SameOrAfter / SameOrBefore (ELM has no OnOrAfter type);
/// `Concept { codes: Code {…} }` promotes the single code with ToList; and
/// the nulls of `in` / `contains` are typed by side (list side: the list
/// or interval of the other side's type; element side of `contains`: the
/// list's element type; element side of `in` over an interval: the point
/// type; element side of `in` over a list: bare).
void main() {
  Map<String, dynamic> define(String body) {
    final lib = libraryFromCql('''
library L version '1'
define "X": $body
''');
    return jsonDecode(jsonEncode(lib.statements!.def.last.expression!.toJson()))
        as Map<String, dynamic>;
  }

  test('exists null', () {
    final e = define('exists null');
    final spec = (e['operand'] as Map)['asTypeSpecifier'] as Map;
    expect(spec['type'], 'ListTypeSpecifier');
    expect(
      (spec['elementType'] as Map)['name'],
      '{urn:hl7-org:elm-types:r1}Any',
    );
  });

  test('on or after is SameOrAfter', () {
    expect(
      define('@2017-12-20 on or after @2017-12-20')['type'],
      'SameOrAfter',
    );
    expect(
      define('@2017-12-20 on or before @2017-12-20')['type'],
      'SameOrBefore',
    );
  });

  test("a concept's single code is promoted to a list", () {
    final e = define("Concept { codes: Code { code: '8480-6' } }");
    final codes = (e['element'] as List).single as Map;
    expect((codes['value'] as Map)['type'], 'ToList');
  });

  test('membership nulls by side', () {
    final listSide = define("null contains 'a'");
    expect(
      ((listSide['operand'] as List)[0] as Map)['asTypeSpecifier'],
      {
        'type': 'ListTypeSpecifier',
        'elementType': {
          'name': '{urn:hl7-org:elm-types:r1}String',
          'type': 'NamedTypeSpecifier',
        },
      },
    );
    final intervalSide = define('1 in null');
    expect(
      (((intervalSide['operand'] as List)[1] as Map)['asTypeSpecifier']
          as Map)['type'],
      'IntervalTypeSpecifier',
    );
    final elementOfContains = define("{ 'a', 'b', null } contains null");
    expect(
      ((elementOfContains['operand'] as List)[1] as Map)['asType'],
      '{urn:hl7-org:elm-types:r1}String',
    );
    final elementOfIn = define('null in Interval[1, 10]');
    expect(
      ((elementOfIn['operand'] as List)[0] as Map)['asType'],
      '{urn:hl7-org:elm-types:r1}Integer',
    );
    final bare = define('null in { 1, null }');
    expect(((bare['operand'] as List)[0] as Map)['type'], 'Null');
  });
}
