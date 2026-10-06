import 'dart:convert';
import 'dart:io';

import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Every ELM file the reference (Java) translator produced for the CQL
/// test suite loads, and what the engine writes for it is what it reads:
/// a second reload changes nothing, and every Literal carries a string
/// value (expression.xsd Literal: `value` is an attribute). Two of the 17
/// files did not load at all until 2026-10-06 (`AggregateClause.distinct`
/// cast as a required bool; the schema says optional, default false).
void main() {
  final files = Directory('test/test/cql_to_elm_tests')
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.json'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  test('the reference directory is where this test expects it', () {
    expect(files.length, 17);
  });

  for (final file in files) {
    final name = file.path.split('/').last;
    test('$name loads, reloads unchanged, and keeps string literals', () {
      final elm = (jsonDecode(file.readAsStringSync())
          as Map<String, dynamic>)['library'] as Map<String, dynamic>;
      final once = CqlLibrary.fromJson(elm).toJson();
      final twice = CqlLibrary.fromJson(once).toJson();
      expect(jsonEncode(twice), jsonEncode(once));
      final values = literalValues(twice);
      expect(values, isNotEmpty);
      for (final (at, value) in values) {
        expect(value, isA<String>(), reason: 'Literal at $at: $value');
      }
    });
  }
}

/// Every `Literal` node's `value` in [json], with where it was found.
List<(String, Object?)> literalValues(Object? json, [String at = '']) {
  final found = <(String, Object?)>[];
  if (json is Map) {
    if (json['type'] == 'Literal' && json.containsKey('valueType')) {
      found.add((at, json['value']));
    }
    for (final e in json.entries) {
      found.addAll(literalValues(e.value, '$at/${e.key}'));
    }
  } else if (json is List) {
    for (var i = 0; i < json.length; i++) {
      found.addAll(literalValues(json[i], '$at/$i'));
    }
  }
  return found;
}
