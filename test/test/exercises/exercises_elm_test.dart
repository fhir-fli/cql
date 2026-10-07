import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:test/test.dart';

/// Grey's translator harness, restored. `lib/main.dart` in fhir_r4_cql
/// (2024-05 to 2025-05-14, "Fixed #3!") translated each `cql/<name>.cql`,
/// wrote ELM, removed the library's `annotation`, and compared the whole
/// tree with `DeepCollectionEquality` against `json/<name>.json` from the
/// reference translator. It was removed on 2026-02-10 ("Convert fhir_r4_cql
/// from Flutter to pure Dart"), its June port into this repo was moved out
/// on 2026-06-18 and deleted from fhir_r4_cql on 2026-07-07. Nothing
/// compared a written ELM value against the reference between then and
/// 2026-10-06. The execution half (answers for Exercises01-05 and Simple)
/// needs the R4 model and belongs in fhir_r4_cql.
///
/// Every file either matches exactly or is listed in [notYetEqual] with the
/// first differing path, so the list can only shrink.
void main() {
  const dir = 'test/test/exercises';
  const names = [
    'Simple',
    'Exercises01',
    'Exercises02',
    'Exercises03',
    'Exercises04',
    'Exercises05',
    'Exercises06',
    'Exercises07',
    'Exercises08',
    'Exercises09',
    'Exercises10',
    'Exercises11',
    'FHIRCommon',
    'QICoreCommon',
  ];

  // Files the translator does not yet reproduce exactly, with the first
  // differing path (measured 2026-10-06). An entry here that becomes equal
  // fails the test, so it is removed.
  const notYetEqual = {
    // FHIRCommon: `FHIRHelpers.ToDateTime(x) + 1 day` style arithmetic the
    // reference writes with the conversion outside the Add.
    'FHIRCommon': '/statements/def/1/expression/caseItem/3/then/low/type',
    // QICoreCommon: toInterval's Age case, `Interval[ToDate(birthDate) +
    // ToQuantity(choice as Age), …]`: the reference writes Add over a
    // Date and a Quantity (with lowClosedExpression); ours wraps the sum
    // in ToDateTime.
    'QICoreCommon':
        '/statements/def/3/expression/caseItem/3/then/low/type: ToDateTime vs Add',
  };

  for (final name in names) {
    final jsonFile = File('$dir/$name.json');
    if (jsonFile.lengthSync() == 0) {
      test('$name has no reference ELM yet', () {
        // Exercises10 and Exercises11: the reference JSON was never produced.
        expect(jsonFile.lengthSync(), 0);
      });
      continue;
    }
    test('$name: written ELM equals the reference, whole tree', () {
      final reference = (jsonDecode(jsonFile.readAsStringSync())
          as Map<String, dynamic>)['library'] as Map<String, dynamic>;
      final ours = jsonDecode(
        jsonEncode(
          libraryFromCql(File('$dir/$name.cql').readAsStringSync()).toJson(),
        ),
      ) as Map<String, dynamic>;
      reference.remove('annotation');
      ours.remove('annotation');
      final equal = const DeepCollectionEquality().equals(reference, ours);
      final diff = firstDifference(reference, ours, '');
      final pinned = notYetEqual[name];
      if (pinned != null) {
        expect(equal, isFalse, reason: '$name now matches: remove its pin');
        expect(diff, startsWith(pinned.split(':').first), reason: diff);
        return;
      }
      expect(equal, isTrue, reason: '$name: $diff');
    });
  }
}

/// The first path at which [ours] differs from [reference].
String? firstDifference(Object? reference, Object? ours, String at) {
  if (reference is Map && ours is Map) {
    for (final k in reference.keys) {
      if (!ours.containsKey(k)) {
        return '$at/$k: missing in ours (${_short(reference[k])})';
      }
      final d = firstDifference(reference[k], ours[k], '$at/$k');
      if (d != null) return d;
    }
    for (final k in ours.keys) {
      if (!reference.containsKey(k)) {
        return '$at/$k: extra in ours (${_short(ours[k])})';
      }
    }
    return null;
  }
  if (reference is List && ours is List) {
    for (var i = 0; i < reference.length && i < ours.length; i++) {
      final d = firstDifference(reference[i], ours[i], '$at/$i');
      if (d != null) return d;
    }
    if (reference.length != ours.length) {
      return '$at: length ${reference.length} vs ${ours.length}';
    }
    return null;
  }
  return reference == ours ? null : '$at: $reference vs $ours';
}

String _short(Object? v) {
  final s = jsonEncode(v);
  return s.length > 80 ? '${s.substring(0, 80)}…' : s;
}
