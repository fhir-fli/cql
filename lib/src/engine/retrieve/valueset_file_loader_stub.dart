/// Stub variant of `ValueSetFileLoader` for platforms without `dart:io`
/// (e.g. the web). The real implementation lives in
/// `valueset_file_loader_io.dart` and is selected by conditional export.
class ValueSetFileLoader {
  /// File-system loading is unavailable on this platform; supply value-set
  /// expansions directly via `context['_valueSets']` instead.
  static Map<String, dynamic> loadFromDirectory(String dirPath) {
    throw UnsupportedError(
      'ValueSetFileLoader requires dart:io, which is not available on this '
      'platform. Supply value-set expansions via context["_valueSets"].',
    );
  }

  /// File-system loading is unavailable on this platform; supply value-set
  /// expansions directly via `context['_valueSets']` instead.
  static MapEntry<String, List<Map<String, String>>>? loadFromFile(
    String filePath,
  ) {
    throw UnsupportedError(
      'ValueSetFileLoader requires dart:io, which is not available on this '
      'platform. Supply value-set expansions via context["_valueSets"].',
    );
  }
}
