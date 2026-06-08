part of 'cql_primitives.dart';

/// Extension methods on [bool] to easily convert to [CqlBoolean].
extension CqlBooleanExtension on bool {
  /// Returns a new [CqlBoolean] constructed from this bool.
  CqlBoolean get toCqlBoolean => CqlBoolean(this);
}

/// CQL System type **Boolean** ([CQL spec §3.4.1](https://cql.hl7.org/03-developersguide.html#boolean)).
///
/// Stored internally as a `"true"` / `"false"` string for round-trip
/// serialization parity with FHIR JSON; the canonical Dart value is
/// available via [valueBoolean].
class CqlBoolean extends CqlPrimitive {
  const CqlBoolean._(super.valueString) : super();

  /// Creates a [CqlBoolean] from a [bool] or a string `"true"`/`"false"`.
  factory CqlBoolean(dynamic rawValue) {
    if (rawValue == null) return const CqlBoolean._(null);
    if (rawValue is bool) return CqlBoolean._(rawValue.toString());
    if (rawValue is String) {
      final lowered = rawValue.trim().toLowerCase();
      if (lowered == 'true' || lowered == 'false') {
        return CqlBoolean._(lowered);
      }
    }
    throw ArgumentError(
      'CqlBoolean only supports bool or string "true"/"false". Got: $rawValue',
    );
  }

  /// Constructs from a JSON map of shape `{'value': true|false|"true"|"false"}`.
  factory CqlBoolean.fromJson(Map<String, dynamic> json) =>
      CqlBoolean(json['value']);

  /// Constructs from a YAML input (string or [YamlMap]).
  static CqlBoolean fromYaml(dynamic yaml) {
    if (yaml is String) {
      return CqlBoolean.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return CqlBoolean.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    }
    throw ArgumentError(
      'CqlBoolean cannot be constructed from $yaml — '
      'neither a YAML string nor a YAML map.',
    );
  }

  /// Attempts to parse [input] as a [CqlBoolean]. Returns `null` on failure.
  static CqlBoolean? tryParse(dynamic input) {
    try {
      return CqlBoolean(input);
    } catch (_) {
      return null;
    }
  }

  /// The Dart [bool] value, or `null` if this represents CQL `null`.
  bool? get valueBoolean =>
      valueString == null ? null : valueString!.toLowerCase() == 'true';

  @override
  String get cqlTypeName => 'Boolean';

  @override
  Map<String, dynamic> toJson() =>
      valueBoolean == null ? const {} : {'value': valueBoolean};

  /// CQL spec equality (three-valued). For Booleans this is just the standard
  /// boolean equality with null propagation.
  @override
  bool? equal(Object other) {
    if (other is! CqlBoolean) return false;
    if (valueBoolean == null || other.valueBoolean == null) return null;
    return valueBoolean == other.valueBoolean;
  }

  /// CQL `equivalent` for Boolean is the same as `equal` per spec —
  /// no precision/tolerance dimension applies.
  @override
  bool equivalent(Object other) =>
      other is CqlBoolean && valueBoolean == other.valueBoolean;

  @override
  bool operator ==(Object other) =>
      other is CqlBoolean && valueString == other.valueString;

  @override
  int get hashCode => valueString.hashCode;

  @override
  String toString() => valueString ?? 'null';
}
