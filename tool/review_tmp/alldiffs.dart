import 'dart:convert';
import 'dart:io';
import 'package:cql/src/cql_to_elm/library_from_cql.dart';

void main(List<String> args) {
  final name = args[0];
  final dir = 'test/test/cql_to_elm_tests';
  final ref = (jsonDecode(File('$dir/$name.json').readAsStringSync())
      as Map)['library'] as Map;
  final ours =
      libraryFromCql(File('$dir/$name.cql').readAsStringSync()).toJson();
  final out = File('tool/review_tmp/diffs_$name.txt').openWrite();
  void strip(Object? j) {
    if (j is Map) {
      j.remove('annotation');
      j.removeWhere((k, v) => v is List && v.isEmpty);
      j.values.forEach(strip);
    } else if (j is List) {
      j.forEach(strip);
    }
  }

  final r = jsonDecode(jsonEncode(ref));
  final o = jsonDecode(jsonEncode(ours));
  strip(r);
  strip(o);
  var n = 0;
  void walk(Object? a, Object? b, String at) {
    if (a is Map && b is Map) {
      for (final k in a.keys) {
        if (!b.containsKey(k)) {
          n++;
          out.writeln(
              '$at/$k: missing in ours (${jsonEncode(a[k]).substring(0, 60.clamp(0, jsonEncode(a[k]).length))})');
          continue;
        }
        walk(a[k], b[k], '$at/$k');
      }
      for (final k in b.keys) {
        if (!a.containsKey(k)) {
          n++;
          out.writeln('$at/$k: extra in ours');
        }
      }
      return;
    }
    if (a is List && b is List) {
      for (var i = 0; i < a.length && i < b.length; i++)
        walk(a[i], b[i], '$at/$i');
      if (a.length != b.length) {
        n++;
        out.writeln('$at: length ${a.length} vs ${b.length}');
      }
      return;
    }
    if (a != b) {
      n++;
      out.writeln('$at: $a vs $b');
    }
  }

  walk(r, o, '');
  out.writeln('TOTAL $n');
  out.close();
}
