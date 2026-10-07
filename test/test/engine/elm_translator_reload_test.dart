import 'dart:convert';
import 'dart:io';

import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Every CQL source in the test suite that this translator can translate
/// writes ELM JSON that reloads to the same JSON, twice over, and the
/// reloaded library executes to the same values as the translated one.
/// Before 2026-10-06 five of the 17 did not survive a reload: two Decimal
/// literals too long for `toStringAsPrecision`, an `OnOrAfter` the
/// top-level reader did not dispatch, and two translator failures that
/// remain and are pinned below so the list stays honest.
void main() {
  final files = Directory('test/test/cql_to_elm_tests')
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.cql'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  // Sources the translator cannot translate, with the message each throws.
  // Empty since 2026-10-06: invalid literals and recovered parse nodes are
  // recorded as error annotations, so every source translates.
  const translatorFailures = <String, String>{};

  // Libraries that do not execute here, pinned with the message each
  // throws: two need a ModelResolver (they retrieve from a data model).
  // CqlIntervalOperatorsTest left this list on 2026-10-06, once Start and
  // End stopped asking for a model over System values.
  const notExecutable = {
    'CqlStringOperatorsTest.cql': 'No ModelResolver',
    'CqlTypeOperatorsTest.cql': 'No ModelResolver',
  };

  var executedAndEqual = 0;

  for (final file in files) {
    final name = file.path.split('/').last;
    final source = file.readAsStringSync();

    final translatorFailure = translatorFailures[name];
    if (translatorFailure != null) {
      test('$name still fails in the translator (pinned)', () {
        expect(
          () => libraryFromCql(source).toJson(),
          throwsA(
            predicate(
              (e) => '$e'.contains(translatorFailure),
              translatorFailure,
            ),
          ),
        );
      });
      continue;
    }

    test('$name: ELM JSON is the same after one, two and three reloads', () {
      final once = jsonEncode(libraryFromCql(source).toJson());
      final twice = jsonEncode(
        CqlLibrary.fromJson(jsonDecode(once) as Map<String, dynamic>).toJson(),
      );
      final thrice = jsonEncode(
        CqlLibrary.fromJson(jsonDecode(twice) as Map<String, dynamic>).toJson(),
      );
      expect(twice, once);
      expect(thrice, once);
    });

    test('$name: the reloaded library executes to the same values', () async {
      final translated = libraryFromCql(source);
      final reloaded = CqlLibrary.fromJson(
        jsonDecode(jsonEncode(translated.toJson())) as Map<String, dynamic>,
      );
      final cannotExecute = notExecutable[name];
      if (cannotExecute != null) {
        await expectLater(
          translated.execute(),
          throwsA(
            predicate(
              (e) => '$e'.contains(cannotExecute),
              cannotExecute,
            ),
          ),
        );
        return;
      }
      final a = await translated.execute() as Map<String, dynamic>;
      final b = await reloaded.execute() as Map<String, dynamic>;
      for (final k in ['startTimestamp', 'library']) {
        a.remove(k);
        b.remove(k);
      }
      expect(sameValues(a, b), isTrue, reason: firstDifference(a, b));
      executedAndEqual++;
    });
  }

  test('at least ten libraries executed on both sides', () {
    expect(executedAndEqual, greaterThanOrEqualTo(10));
  });
}

/// Deep equality by `==` on the leaves, so a UTC DateTime written as
/// `Z` and read back as offset `+00:00` (the ELM form) compare equal.
/// A define that threw holds its exception as its value (see
/// expression_def_failure_test); two exceptions are never `==`, so they
/// compare by text. CqlIntervalOperatorsTest's "Interval" define throws
/// on both sides, from its `InvalidIntegerInterval` case (`Interval[5, 3]`,
/// marked `invalid: true` in the suite).
bool sameValues(Object? a, Object? b) {
  if (a is Exception && b is Exception) return '$a' == '$b';
  if (a is Map && b is Map) {
    if (a.length != b.length) return false;
    for (final k in a.keys) {
      if (!b.containsKey(k) || !sameValues(a[k], b[k])) return false;
    }
    return true;
  }
  if (a is List && b is List) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (!sameValues(a[i], b[i])) return false;
    }
    return true;
  }
  return a == b;
}

String firstDifference(Object? a, Object? b, [String at = '']) {
  if (a is Map && b is Map) {
    for (final k in a.keys) {
      if (!b.containsKey(k)) return '$at/$k missing after reload';
      if (!sameValues(a[k], b[k])) return firstDifference(a[k], b[k], '$at/$k');
    }
    return '$at: key sets differ';
  }
  if (a is List && b is List) {
    for (var i = 0; i < a.length && i < b.length; i++) {
      if (!sameValues(a[i], b[i])) return firstDifference(a[i], b[i], '$at/$i');
    }
    return '$at: lengths ${a.length} vs ${b.length}';
  }
  return '$at: $a (${a.runtimeType}) vs $b (${b.runtimeType})';
}
