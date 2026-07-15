/// Parses FHIR ValueSet JSON resources and extracts code expansions
/// for use as `context['_valueSets']` in CQL execution.
///
/// This class is platform-independent; to load ValueSet JSON from the file
/// system on the VM, see `ValueSetFileLoader`.
class ValueSetLoader {
  /// Extracts `{system, code}` pairs from a FHIR ValueSet resource.
  ///
  /// Checks `expansion.contains` first, then falls back to
  /// `compose.include[].concept[]`.
  static List<Map<String, String>> extractCodes(Map<String, dynamic> valueSet) {
    final codes = <Map<String, String>>[];

    // Prefer expansion if available
    final expansion = valueSet['expansion'];
    if (expansion is Map<String, dynamic>) {
      final contains = expansion['contains'];
      if (contains is List) {
        for (final entry in contains) {
          if (entry is Map<String, dynamic>) {
            final system = entry['system']?.toString();
            final code = entry['code']?.toString();
            if (system != null && code != null) {
              codes.add({'system': system, 'code': code});
            }
          }
        }
        if (codes.isNotEmpty) return codes;
      }
    }

    // Fall back to compose.include
    final compose = valueSet['compose'];
    if (compose is Map<String, dynamic>) {
      final includes = compose['include'];
      if (includes is List) {
        for (final include in includes) {
          if (include is! Map<String, dynamic>) continue;
          final system = include['system']?.toString();
          final concepts = include['concept'];
          if (concepts is List && system != null) {
            for (final concept in concepts) {
              if (concept is Map<String, dynamic>) {
                final code = concept['code']?.toString();
                if (code != null) {
                  codes.add({'system': system, 'code': code});
                }
              }
            }
          }
        }
      }
    }

    return codes;
  }
}
