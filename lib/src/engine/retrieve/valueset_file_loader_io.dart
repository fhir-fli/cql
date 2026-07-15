import 'dart:convert';
import 'dart:io';

import 'package:cql/src/engine/retrieve/valueset_loader.dart';

/// Loads FHIR ValueSet JSON resources from the file system (VM only) and
/// extracts code expansions via [ValueSetLoader.extractCodes].
///
/// On platforms without `dart:io` (e.g. the web) the stub variant of this
/// class is exported instead, and its methods throw [UnsupportedError] —
/// supply value-set expansions directly via `context['_valueSets']` there.
class ValueSetFileLoader {
  /// Loads all ValueSet JSON files from a directory into a `_valueSets` map.
  ///
  /// The returned map is keyed by each ValueSet's `url` field, with values
  /// being lists of `{system, code}` maps.
  static Map<String, dynamic> loadFromDirectory(String dirPath) {
    final valueSets = <String, dynamic>{};
    final dir = Directory(dirPath);
    if (!dir.existsSync()) return valueSets;

    for (final file in dir.listSync().whereType<File>()) {
      if (!file.path.endsWith('.json')) continue;
      try {
        final content = file.readAsStringSync();
        final json = jsonDecode(content);
        if (json is Map<String, dynamic> &&
            json['resourceType'] == 'ValueSet') {
          final url = json['url']?.toString();
          if (url != null) {
            final codes = ValueSetLoader.extractCodes(json);
            if (codes.isNotEmpty) {
              valueSets[url] = codes;
            }
          }
        }
      } catch (_) {
        // Skip files that can't be parsed
      }
    }

    return valueSets;
  }

  /// Loads a single ValueSet JSON file and returns a map entry
  /// `{url: List<{system, code}>}`, or null if not a valid ValueSet.
  static MapEntry<String, List<Map<String, String>>>? loadFromFile(
    String filePath,
  ) {
    try {
      final content = File(filePath).readAsStringSync();
      final json = jsonDecode(content);
      if (json is Map<String, dynamic> && json['resourceType'] == 'ValueSet') {
        final url = json['url']?.toString();
        if (url != null) {
          final codes = ValueSetLoader.extractCodes(json);
          if (codes.isNotEmpty) {
            return MapEntry(url, codes);
          }
        }
      }
    } catch (_) {
      // Skip files that can't be parsed
    }
    return null;
  }
}
