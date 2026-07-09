part of 'cql_primitives.dart';

/// Extension methods on [num] to easily convert to [CqlDecimal].
extension CqlDecimalExtension on num {
  /// Returns a new [CqlDecimal] constructed from this num.
  CqlDecimal get toCqlDecimal => CqlDecimal(this);
}

/// CQL System type **Decimal** ([CQL spec §3.4.2](https://cql.hl7.org/03-developersguide.html#decimal)).
///
/// Decimal values preserve their source-text *scale* (digits after the
/// decimal point) — `1.0` and `1.00` compare `equal` but differ in scale,
/// which matters for `equivalent`'s tolerance semantics. The canonical
/// string in [valueString] is the source text; the Dart [double] value is
/// available via [valueDouble].
class CqlDecimal extends CqlNumber {
  /// Creates a [CqlDecimal] from a [num] or a numeric [String]. String input
  /// preserves source scale (`"1.00"` stays `"1.00"`).
  factory CqlDecimal(dynamic rawValue) {
    if (rawValue == null) {
      return const CqlDecimal._(valueString: null, isInt: false);
    }
    if (rawValue is num) {
      return CqlDecimal._(
        valueString: rawValue.toString(),
        isInt: rawValue is int,
      );
    }
    if (rawValue is String) {
      final trimmed = rawValue.trim();
      final asInt = int.tryParse(trimmed);
      if (asInt != null) {
        return CqlDecimal._(valueString: trimmed, isInt: true);
      }
      if (double.tryParse(trimmed) != null) {
        return CqlDecimal._(valueString: trimmed, isInt: false);
      }
    }
    throw ArgumentError(
      'CqlDecimal only supports num or numeric String. Got: $rawValue',
    );
  }
  const CqlDecimal._({
    required String? valueString,
    required this.isInt,
  }) : super._(valueString);

  /// Creates a [CqlDecimal] from a [CqlInteger].
  factory CqlDecimal.fromCqlInteger(CqlInteger integer) =>
      CqlDecimal(integer.valueString);

  /// Constructs from a JSON map of shape `{'value': <num|string>}`.
  factory CqlDecimal.fromJson(Map<String, dynamic> json) {
    final raw = json['value'];
    // Preserve precision: prefer source string if present, else stringify.
    return CqlDecimal(raw is num ? raw.toString() : raw);
  }

  /// Constructs from a YAML input (string or [YamlMap]).
  static CqlDecimal fromYaml(dynamic yaml) {
    if (yaml is String) {
      return CqlDecimal.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return CqlDecimal.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    }
    throw ArgumentError(
      'CqlDecimal cannot be constructed from $yaml — '
      'neither a YAML string nor a YAML map.',
    );
  }

  /// Attempts to parse [input] as a [CqlDecimal]. Returns `null` on failure.
  static CqlDecimal? tryParse(dynamic input) {
    try {
      return CqlDecimal(input);
    } catch (_) {
      return null;
    }
  }

  /// `true` if the source representation was an integer literal (no decimal
  /// point in the JSON/text). Used for JSON round-trip parity so `1` doesn't
  /// become `1.0` on the way back out.
  final bool isInt;

  /// The Dart [num] value (int if [isInt], else double), or `null` for CQL null.
  @override
  num? get valueNum => valueString == null ? null : num.parse(valueString!);

  /// The Dart [double] value, or `null` for CQL null.
  double? get valueDouble =>
      valueString == null ? null : double.parse(valueString!);

  /// The Dart [int] value if [isInt], else `null`.
  int? get valueInt =>
      (valueString != null && isInt) ? int.parse(valueString!) : null;

  /// Number of digits after the decimal point in the source representation.
  /// `1` → 0, `1.0` → 1, `1.00` → 2. Returns `0` for null.
  int get scale {
    if (valueString == null) return 0;
    final dot = valueString!.indexOf('.');
    if (dot < 0) return 0;
    return valueString!.length - dot - 1;
  }

  @override
  String get cqlTypeName => 'Decimal';

  @override
  Map<String, dynamic> toJson() =>
      valueNum == null ? const {} : {'value': valueInt ?? valueNum};

  // equal / compareTo inherited from CqlNumber. `equivalent` is scale-aware
  // for Decimal per spec, so we override.

  /// CQL `equivalent` for Decimal rounds both operands to the lesser of
  /// the two scales before comparing — `1.0 ~ 1.00` → true,
  /// `1.0 ~ 1.1` → false, `1.00 ~ 1.04` → true (compared at scale 1).
  @override
  bool equivalent(Object other) {
    if (other is! CqlDecimal) {
      // Mixed-type numeric: fall back to numeric equality.
      return other is CqlNumber && valueNum == other.valueNum;
    }
    if (valueDouble == null || other.valueDouble == null) {
      return valueDouble == other.valueDouble;
    }
    final commonScale = scale < other.scale ? scale : other.scale;
    final factor = _pow10(commonScale);
    final a = (valueDouble! * factor).round();
    final b = (other.valueDouble! * factor).round();
    return a == b;
  }

  static double _pow10(int n) {
    var result = 1.0;
    for (var i = 0; i < n; i++) {
      result *= 10;
    }
    return result;
  }
}
