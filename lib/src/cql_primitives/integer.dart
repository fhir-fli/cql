part of 'cql_primitives.dart';

/// Extension methods on [int] to easily convert to [CqlInteger].
extension CqlIntegerExtension on int {
  /// Returns a new [CqlInteger] constructed from this int.
  CqlInteger get toCqlInteger => CqlInteger(this);
}

/// CQL System type **Integer** ([CQL spec §3.4.4](https://cql.hl7.org/03-developersguide.html#integer)).
///
/// CQL Integer is a signed 32-bit integer. Stored as a canonical decimal
/// string for round-trip parity; canonical Dart value via [valueInt].
class CqlInteger extends CqlNumber {
  /// Creates a [CqlInteger] from an [int] or a numeric [String].
  factory CqlInteger(dynamic rawValue) {
    if (rawValue == null) return const CqlInteger._(null);
    if (rawValue is int) return CqlInteger._(rawValue.toString());
    if (rawValue is num) {
      if (rawValue == rawValue.truncate()) {
        return CqlInteger._(rawValue.toInt().toString());
      }
      throw ArgumentError(
        'CqlInteger requires a whole number; got non-integral num: $rawValue',
      );
    }
    if (rawValue is String) {
      final parsed = int.tryParse(rawValue.trim());
      if (parsed != null) return CqlInteger._(parsed.toString());
    }
    throw ArgumentError(
      'CqlInteger only supports int or integer-valued String. Got: $rawValue',
    );
  }
  const CqlInteger._(super.valueString) : super._();

  /// Constructs from a JSON map of shape `{'value': <int|string>}`.
  factory CqlInteger.fromJson(Map<String, dynamic> json) =>
      CqlInteger(json['value']);

  /// Constructs from a YAML input (string or [YamlMap]).
  static CqlInteger fromYaml(dynamic yaml) {
    if (yaml is String) {
      return CqlInteger.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return CqlInteger.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    }
    throw ArgumentError(
      'CqlInteger cannot be constructed from $yaml — '
      'neither a YAML string nor a YAML map.',
    );
  }

  /// Attempts to parse [input] as a [CqlInteger]. Returns `null` on failure.
  static CqlInteger? tryParse(dynamic input) {
    try {
      return CqlInteger(input);
    } catch (_) {
      return null;
    }
  }

  /// The Dart [int] value, or `null` if this represents CQL `null`.
  int? get valueInt => valueString == null ? null : int.parse(valueString!);

  @override
  num? get valueNum => valueInt;

  @override
  String get cqlTypeName => 'Integer';

  @override
  Map<String, dynamic> toJson() =>
      valueInt == null ? const {} : {'value': valueInt};

  // equal / equivalent / compareTo inherited from CqlNumber (numeric-promoting
  // per CQL spec — `1 = 1.0` is true after implicit conversion).
}
