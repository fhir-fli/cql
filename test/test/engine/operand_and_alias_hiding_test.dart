import 'dart:convert';

import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:test/test.dart';

/// CQL Developer's Guide, Identifier Resolution: "query aliases, operand
/// names, and let aliases are allowed to be defined with the same name as
/// an existing identifier, effectively hiding the existing identifier."
/// Until 2026-10-06 an operand used anywhere but as the whole function body
/// was written as IdentifierRef (FHIRCommon.ToInterval's `choice`), and a
/// query alias was resolved only after every library-level name.
void main() {
  List<Map<String, dynamic>> nodes(Object? j, String type, String name) {
    final out = <Map<String, dynamic>>[];
    void walk(Object? x) {
      if (x is Map) {
        if (x['type'] == type && x['name'] == name) {
          out.add(Map<String, dynamic>.from(x));
        }
        x.values.forEach(walk);
      } else if (x is List) {
        x.forEach(walk);
      }
    }

    walk(j);
    return out;
  }

  test('an operand inside a case is an OperandRef', () {
    final json = jsonDecode(
      jsonEncode(
        libraryFromCql('''
library L version '1'
define function Classify(choice Integer):
  case
    when choice < 0 then 'negative'
    when choice = 0 then 'zero'
    else 'positive'
  end
''').toJson(),
      ),
    );
    expect(nodes(json, 'OperandRef', 'choice'), hasLength(2));
    expect(nodes(json, 'IdentifierRef', 'choice'), isEmpty);
  });

  test('an operand hides a define of the same name', () {
    final json = jsonDecode(
      jsonEncode(
        libraryFromCql('''
library L version '1'
define "E": 1
define function A(E Integer): E + 1
''').toJson(),
      ),
    );
    expect(nodes(json, 'OperandRef', 'E'), hasLength(1));
    expect(nodes(json, 'ExpressionRef', 'E'), isEmpty);
  });

  test('a query alias hides a define of the same name', () {
    // The guide's own example: `define E: …` and `[Encounter] E where …`.
    final json = jsonDecode(
      jsonEncode(
        libraryFromCql('''
library L version '1'
define "E": 'A top-level expression named E'
define "Query": ({1, 2, 3}) E where E > 1
''').toJson(),
      ),
    );
    expect(nodes(json, 'AliasRef', 'E'), isNotEmpty);
    expect(nodes(json, 'ExpressionRef', 'E'), isEmpty);
  });
}
