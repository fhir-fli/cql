// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:test/test.dart';

import '../test_helpers/cql_test_helpers.dart';

/// Tests that the Dart CQL-to-ELM translator produces ELM output structurally
/// consistent with the reference Java translator (cqframework v4.2.0).
///
/// Reference files from: https://github.com/cqframework/cql-execution
/// Each .cql file has a paired .json with the expected ELM output.
///
/// We compare at multiple levels:
/// 1. Parse success — can we parse the CQL at all?
/// 2. Library identity — does the library id match?
/// 3. Statement names — do we produce the same define statements?
/// 4. Expression types — do top-level expression types match?
/// 5. Expression node types — do all expression node types in the tree match?
void main() {
  final testDir = Directory('test/test/cql_to_elm_tests');
  final cqlFiles = testDir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.cql'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  // Files the Dart translator cannot translate. These still test that the
  // failure is reported, but skip structural comparison. Empty since
  // 2026-10-06: a long Decimal is kept as text, an invalid date, datetime
  // or time literal and a syntax-recovered node become error annotations.
  const knownParseFailures = <String>{};

  // Files whose written ELM does not yet equal the reference, with the
  // first differing path (measured 2026-10-06).
  // All 17, at the same first difference: the sources say `using QUICK`,
  // and the reference writes the Patient retrieve's templateId as the QICore
  // profile; ours writes the base FHIR Patient (no QUICK model loaded).
  const notYetEqual = <String, String>{
    'CqlAggregateFunctionsTest':
        '/statements/def/0/expression/operand/templateId',
    'CqlAggregateTest': '/statements/def/0/expression/operand/templateId',
    'CqlArithmeticFunctionsTest':
        '/statements/def/0/expression/operand/templateId',
    'CqlComparisonOperatorsTest':
        '/statements/def/0/expression/operand/templateId',
    'CqlConditionalOperatorsTest':
        '/statements/def/0/expression/operand/templateId',
    'CqlDateTimeOperatorsTest':
        '/statements/def/0/expression/operand/templateId',
    'CqlErrorsAndMessagingOperatorsTest':
        '/statements/def/0/expression/operand/templateId',
    'CqlIntervalOperatorsTest':
        '/statements/def/0/expression/operand/templateId',
    'CqlListOperatorsTest': '/statements/def/0/expression/operand/templateId',
    'CqlLogicalOperatorsTest':
        '/statements/def/0/expression/operand/templateId',
    'CqlNullologicalOperatorsTest':
        '/statements/def/0/expression/operand/templateId',
    'CqlOverloadMatching': '/statements/def/0/expression/operand/templateId',
    'CqlQueryTests': '/statements/def/0/expression/operand/templateId',
    'CqlStringOperatorsTest': '/statements/def/0/expression/operand/templateId',
    'CqlTypeOperatorsTest': '/statements/def/0/expression/operand/templateId',
    'CqlTypesTest': '/statements/def/0/expression/operand/templateId',
    'ValueLiteralsAndSelectors':
        '/statements/def/0/expression/operand/templateId',
  };

  for (final cqlFile in cqlFiles) {
    final name = cqlFile.path.split('/').last.replaceAll('.cql', '');
    final jsonFile = File(cqlFile.path.replaceAll('.cql', '.json'));

    if (!jsonFile.existsSync()) continue;

    group('CQL-to-ELM: $name', () {
      late Map<String, dynamic> referenceLib;
      late Map<String, dynamic> actualLib;
      late bool parseSucceeded;

      setUpAll(() {
        final cqlSource = cqlFile.readAsStringSync();
        final referenceJson =
            jsonDecode(jsonFile.readAsStringSync()) as Map<String, dynamic>;
        // Reference wraps content in {"library": {...}}
        referenceLib = (referenceJson['library'] as Map<String, dynamic>?) ??
            referenceJson;

        try {
          final library = parseAndBuildLibrary(cqlSource);
          final json = library.toJson();
          // Dart translator returns library content directly (no wrapper)
          actualLib = (json['library'] as Map<String, dynamic>?) ?? json;
          parseSucceeded = true;
        } catch (e) {
          if (!knownParseFailures.contains(name)) {
            print('UNEXPECTED parse failure for $name: $e');
          }
          parseSucceeded = false;
          actualLib = {};
        }
      });

      test('parses CQL source', () {
        if (knownParseFailures.contains(name)) {
          // Known failure — just document it
          expect(
            parseSucceeded,
            isFalse,
            reason: '$name is expected to fail parsing '
                '(remove from knownParseFailures if fixed)',
          );
          return;
        }
        expect(parseSucceeded, isTrue, reason: '$name failed to parse');
      });

      test('produces a library with matching identifier', () {
        if (!parseSucceeded) return;

        final refId = referenceLib['identifier'] as Map<String, dynamic>?;
        final actualId = actualLib['identifier'];

        if (refId != null && actualId is Map) {
          expect(
            actualId['id'],
            refId['id'],
            reason: '$name: library id mismatch',
          );
        }
      });

      test('produces statements with matching names', () {
        if (!parseSucceeded) return;

        final refStatements = _getStatementNames(referenceLib);
        final actualStatements = _getStatementNames(actualLib);

        for (final refName in refStatements) {
          if (refName == 'Patient') continue;
          expect(
            actualStatements,
            contains(refName),
            reason: '$name: missing statement "$refName"',
          );
        }
      });

      test('written ELM equals the reference, whole tree', () {
        // Until 2026-10-06 this file checked only that each define's
        // top-level `type` matched and that over half of the reference's
        // node type strings appeared somewhere in ours. Now the trees are
        // compared value by value (DeepCollectionEquality), as Grey's
        // original harness did, after dropping `annotation` (the reference
        // writes an empty array on every node) and the defines the
        // translator reports as not translated (a syntax error inside; the
        // reference, built from the test XML, shows those as 'skipped'
        // elements). A file that is not yet equal is pinned in
        // `notYetEqual` with its first differing path; the pin fails once
        // the file matches, so the list can only shrink.
        if (!parseSucceeded) return;
        final untranslated = _untranslatedDefines(actualLib);
        final ref = _comparable(referenceLib, untranslated);
        final ours = _comparable(actualLib, untranslated);
        final equal = const DeepCollectionEquality().equals(ref, ours);
        final diff = _firstDifference(ref, ours, '');
        final pinned = notYetEqual[name];
        if (pinned != null) {
          expect(equal, isFalse, reason: '$name now matches: remove its pin');
          expect(diff, startsWith(pinned), reason: diff);
          return;
        }
        expect(equal, isTrue, reason: '$name: $diff');
      });
    });
  }
}

/// The library with `annotation` removed everywhere and the untranslated
/// defines dropped, for a value-by-value comparison.
Map<String, dynamic> _comparable(
  Map<String, dynamic> lib,
  Set<String> untranslated,
) {
  final copy = jsonDecode(jsonEncode(lib)) as Map<String, dynamic>;
  void strip(Object? j) {
    if (j is Map) {
      j.remove('annotation');
      // expression.xsd: `signature` minOccurs=0; at signatureLevel None the
      // reference writes an empty array on every operator, which is no value.
      if (j['signature'] is List && (j['signature'] as List).isEmpty) {
        j.remove('signature');
      }
      j.values.forEach(strip);
    } else if (j is List) {
      j.forEach(strip);
    }
  }

  strip(copy);
  final defs = (copy['statements'] as Map?)?['def'] as List?;
  defs?.removeWhere((d) => untranslated.contains((d as Map)['name']));
  return copy;
}

/// The first path at which [ours] differs from [reference].
String? _firstDifference(Object? reference, Object? ours, String at) {
  if (reference is Map && ours is Map) {
    for (final k in reference.keys) {
      if (!ours.containsKey(k)) return '$at/$k: missing in ours';
      final d = _firstDifference(reference[k], ours[k], '$at/$k');
      if (d != null) return d;
    }
    for (final k in ours.keys) {
      if (!reference.containsKey(k)) return '$at/$k: extra in ours';
    }
    return null;
  }
  if (reference is List && ours is List) {
    for (var i = 0; i < reference.length && i < ours.length; i++) {
      final d = _firstDifference(reference[i], ours[i], '$at/$i');
      if (d != null) return d;
    }
    if (reference.length != ours.length) {
      return '$at: length ${reference.length} vs ${ours.length}';
    }
    return null;
  }
  return reference == ours ? null : '$at: $reference vs $ours';
}

/// Defines the Dart translator reports as not translated (a syntax error
/// inside them), by name, from the library's error annotations.
Set<String> _untranslatedDefines(Map<String, dynamic> lib) {
  final pattern = RegExp('^define "([^"]+)" was not translated');
  return (lib['annotation'] as List? ?? const [])
      .whereType<Map<String, dynamic>>()
      .map((a) => pattern.firstMatch(a['message'] as String? ?? ''))
      .whereType<RegExpMatch>()
      .map((m) => m.group(1)!)
      .toSet();
}

/// Extract statement definition names from a library map.
List<String> _getStatementNames(Map<String, dynamic> lib) {
  final stmts = lib['statements'] as Map<String, dynamic>?;
  final defs = stmts?['def'] as List?;
  if (defs == null) return [];
  return defs
      .whereType<Map<String, dynamic>>()
      .map((s) => s['name'] as String? ?? '')
      .where((n) => n.isNotEmpty)
      .toList();
}
