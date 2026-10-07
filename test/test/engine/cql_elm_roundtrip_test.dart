import 'dart:convert';
import 'dart:io';

import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

/// Regression tests for serializing a translated library to ELM JSON and
/// reloading it. The scalar `Literal` values in ELM JSON are plain
/// strings/numbers, not maps — a wrong cast in `Literal.fromJson` once broke
/// this round trip for every translated scalar literal.
void main() {
  group('ELM JSON round trip', () {
    test('translated scalar literals reload and execute identically', () async {
      final library = libraryFromCql("""
library RoundTrip version '1.0.0'

define "IntProduct": 6 * 7
define "StringConcat": 'Hello, ' + 'CQL!'
define "DecimalSum": 1.5 + 2.25
define "BoolAnd": true and true
define "LongValue": 25L + 5L
define "QuantitySum": 5 'mg' + 2.5 'mg'
define "IntervalContains": 100 in Interval[90, 120]
""");

      final reloaded = CqlLibrary.fromJson(library.toJson());
      final results = await reloaded.execute() as Map<String, dynamic>;

      expect(results['IntProduct'], CqlInteger(42));
      // A System String (Concatenate answers CqlString since 2026-10-06).
      expect(results['StringConcat'], CqlString('Hello, CQL!'));
      expect(results['DecimalSum'], CqlDecimal(3.75));
      expect(results['BoolAnd'], CqlBoolean(true));
      expect(results['LongValue'], CqlLong.fromNum(30));
      expect(
        results['QuantitySum'],
        ValidatedQuantity.fromString("7.5 'mg'"),
      );
      expect(results['IntervalContains'], CqlBoolean(true));
    });

    test('reloaded library matches original execution results', () async {
      final library = libraryFromCql("""
library RoundTrip2 version '1.0.0'

define "X": (3 + 4) * 2
""");
      final original = await library.execute() as Map<String, dynamic>;
      final reloaded = await CqlLibrary.fromJson(library.toJson()).execute()
          as Map<String, dynamic>;
      expect(reloaded['X'], original['X']);
      expect(reloaded['X'], CqlInteger(14));
    });
  });

  // A second reload. `Literal.fromJson` builds a `Literal` wrapper around
  // a scalar literal, and the wrapper's `toJson` wrote the scalar class's
  // whole `toJson()` under `value`, so each reload nested the value one
  // level deeper; the second reload failed with "'String' is not a subtype
  // of 'bool'" (fhirant REVIEW-2026-10-06 finding 16, measured 2026-10-06).
  // ELM's `Literal.value` is a string: all 10,324 Literal nodes in the
  // reference translator's outputs under test/cql_to_elm_tests carry one.
  group('ELM JSON round trip, twice', () {
    const source = """
library RoundTripTwice version '1.0.0'

define "IntProduct": 6 * 7
define "StringConcat": 'Hello, ' + 'CQL!'
define "DecimalSum": 1.5 + 2.25
define "BoolAnd": true and true
define "BoolOr": false or true
define "LongValue": 25L + 5L
define "QuantitySum": 5 'mg' + 2.5 'mg'
define "IntervalContains": 100 in Interval[90, 120]
""";

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

    test('toJson is the same after one reload as after two', () {
      final once = libraryFromCql(source).toJson();
      final twice = CqlLibrary.fromJson(once).toJson();
      final thrice = CqlLibrary.fromJson(twice).toJson();
      expect(jsonEncode(twice), jsonEncode(thrice));
      expect(jsonEncode(twice), jsonEncode(once));
    });

    test('every Literal value is a string, as the reference ELM has it', () {
      final once = libraryFromCql(source).toJson();
      final twice = CqlLibrary.fromJson(once).toJson();
      final values = literalValues(twice);
      expect(values, isNotEmpty);
      for (final (at, value) in values) {
        expect(value, isA<String>(), reason: 'Literal at $at: $value');
      }
    });

    test('a library reloaded twice executes identically', () async {
      final once = libraryFromCql(source).toJson();
      final reloaded = CqlLibrary.fromJson(CqlLibrary.fromJson(once).toJson());
      final results = await reloaded.execute() as Map<String, dynamic>;
      expect(results['IntProduct'], CqlInteger(42));
      // A System String (Concatenate answers CqlString since 2026-10-06).
      expect(results['StringConcat'], CqlString('Hello, CQL!'));
      expect(results['DecimalSum'], CqlDecimal(3.75));
      expect(results['BoolAnd'], CqlBoolean(true));
      expect(results['BoolOr'], CqlBoolean(true));
      expect(results['LongValue'], CqlLong.fromNum(30));
      expect(
        results['QuantitySum'],
        ValidatedQuantity.fromString("7.5 'mg'"),
      );
      expect(results['IntervalContains'], CqlBoolean(true));
    });

    test("the reference translator's ELM reloads to the same JSON", () {
      // 30 Long literals from the Java translator, read once and written
      // back: what the engine writes must be what it read.
      final file =
          File('test/test/cql_to_elm_tests/CqlAggregateFunctionsTest.json');
      final original =
          jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      final elm = original['library'] as Map<String, dynamic>;
      final once = CqlLibrary.fromJson(elm).toJson();
      final twice = CqlLibrary.fromJson(once).toJson();
      expect(jsonEncode(twice), jsonEncode(once));
      for (final (at, value) in literalValues(twice)) {
        expect(value, isA<String>(), reason: 'Literal at $at: $value');
      }
    });
  });
}
