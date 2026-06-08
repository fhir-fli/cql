part of 'cql_primitives.dart';

/// Extension methods on [String] to easily convert to [CqlString].
extension CqlStringExtension on String {
  /// Returns a [CqlString] constructed from this string.
  CqlString get toCqlString => CqlString(this);
}

/// CQL System type **String** ([CQL spec §3.4.3](https://cql.hl7.org/03-developersguide.html#string)).
///
/// Unicode strings of any length. `equal` is case- and whitespace-sensitive;
/// `equivalent` normalizes whitespace and is case-insensitive per spec.
///
/// Convenience string operations (`substring`, `contains`, `split`, etc.) are
/// kept on this type so engine code can manipulate CqlString instances
/// directly without unwrapping to Dart String first.
class CqlString extends CqlPrimitive {
  const CqlString._(super.valueString) : super();

  /// Creates a [CqlString] from any value via `.toString()`.
  /// Pass `null` for a CQL null.
  factory CqlString(dynamic rawValue) {
    if (rawValue == null) return const CqlString._(null);
    if (rawValue is String) return CqlString._(rawValue);
    return CqlString._(rawValue.toString());
  }

  /// Constructs from a JSON map of shape `{'value': <string>}`.
  factory CqlString.fromJson(Map<String, dynamic> json) =>
      CqlString(json['value']);

  /// Constructs from a YAML input (string or [YamlMap]).
  factory CqlString.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return CqlString.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return CqlString.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    }
    throw const FormatException('Invalid YAML format for CqlString');
  }

  /// Attempts to parse [input] as a [CqlString]. Returns `null` on failure.
  static CqlString? tryParse(dynamic input) {
    if (input is String) {
      try {
        return CqlString(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  @override
  String get cqlTypeName => 'String';

  @override
  Map<String, dynamic> toJson() =>
      (valueString == null || valueString!.isEmpty)
          ? const {}
          : {'value': valueString};

  @override
  bool? equal(Object other) {
    if (other is! CqlString) return false;
    if (valueString == null || other.valueString == null) return null;
    return valueString == other.valueString;
  }

  /// CQL `equivalent` on strings is case-insensitive and normalizes
  /// whitespace runs to a single space (per spec §3.4.3).
  @override
  bool equivalent(Object other) {
    if (other is! CqlString) return false;
    if (valueString == null || other.valueString == null) {
      return valueString == other.valueString;
    }
    return _normalize(valueString!) == _normalize(other.valueString!);
  }

  static final RegExp _whitespaceRun = RegExp(r'\s+');

  static String _normalize(String s) =>
      s.trim().replaceAll(_whitespaceRun, ' ').toLowerCase();

  @override
  bool operator ==(Object other) =>
      other is CqlString && valueString == other.valueString;

  @override
  int get hashCode => valueString.hashCode;

  @override
  String toString() => valueString ?? 'null';

  // ---------------------------------------------------------------------------
  // String-manipulation conveniences — kept so engine code can operate on
  // CqlString instances directly. All gracefully no-op when valueString is null.
  // ---------------------------------------------------------------------------

  bool get isEmptyString => valueString?.isEmpty ?? true;
  bool get isNotEmpty => !isEmptyString;
  int get length => valueString?.length ?? 0;

  String operator [](int index) => valueString?[index] ?? '';
  int? codeUnitAt(int index) => valueString?.codeUnitAt(index);
  Runes? get runes => valueString?.runes;
  List<int> get codeUnits => valueString?.codeUnits ?? [];

  String substring(int start, [int? end]) =>
      valueString?.substring(start, end) ?? '';
  String trim() => valueString?.trim() ?? '';
  String trimLeft() => valueString?.trimLeft() ?? '';
  String trimRight() => valueString?.trimRight() ?? '';
  bool contains(Pattern pattern, [int startIndex = 0]) =>
      valueString?.contains(pattern, startIndex) ?? false;
  String padLeft(int width, [String padding = ' ']) =>
      valueString?.padLeft(width, padding) ?? padding;
  String padRight(int width, [String padding = ' ']) =>
      valueString?.padRight(width, padding) ?? padding;
  String toUpperCase() => valueString?.toUpperCase() ?? '';
  String toLowerCase() => valueString?.toLowerCase() ?? '';
  bool startsWith(Pattern pattern, [int index = 0]) =>
      valueString?.startsWith(pattern, index) ?? false;
  bool endsWith(String other) => valueString?.endsWith(other) ?? false;
  int indexOf(Pattern pattern, [int start = 0]) =>
      valueString?.indexOf(pattern, start) ?? -1;
  int lastIndexOf(Pattern pattern, [int? start]) =>
      valueString?.lastIndexOf(pattern, start) ?? -1;
  String operator +(String other) => (valueString ?? '') + other;
  List<String> split(Pattern pattern) => valueString?.split(pattern) ?? [];
  String replaceFirst(Pattern from, String to, [int startIndex = 0]) =>
      valueString?.replaceFirst(from, to, startIndex) ?? '';
  String replaceAll(Pattern from, String replace) =>
      valueString?.replaceAll(from, replace) ?? '';
  String replaceFirstMapped(
    Pattern from,
    String Function(Match) replace, [
    int startIndex = 0,
  ]) =>
      valueString?.replaceFirstMapped(from, replace, startIndex) ?? '';
  String replaceAllMapped(Pattern from, String Function(Match) replace) =>
      valueString?.replaceAllMapped(from, replace) ?? '';
  String replaceRange(int start, int? end, String replacement) =>
      valueString?.replaceRange(start, end, replacement) ?? '';
}
