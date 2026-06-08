part of 'cql_primitives.dart';

/// Convert any [num] to [CqlLong].
extension CqlLongNumExtension on num {
  /// Returns a new [CqlLong] constructed from this num.
  CqlLong get toCqlLong => CqlLong.fromNum(this);
}

/// Convert any [String] to [CqlLong].
extension CqlLongStringExtension on String {
  /// Returns a new [CqlLong] constructed from this string.
  CqlLong get toCqlLong => CqlLong.fromString(this);
}

/// Convert any [BigInt] to [CqlLong].
extension CqlLongBigIntExtension on BigInt {
  /// Returns a new [CqlLong] constructed from this BigInt.
  CqlLong get toCqlLong => CqlLong.fromBigInt(this);
}

/// CQL System type **Long** ([CQL spec §3.4.5](https://cql.hl7.org/03-developersguide.html#long)).
///
/// CQL Long is a signed 64-bit integer. Uses [BigInt] internally so that
/// values near `int64` boundaries serialize/deserialize losslessly on the
/// web (JS numbers are doubles, so a Dart `int` cast on JS would lose
/// precision past 2^53).
class CqlLong extends CqlPrimitive implements Comparable<CqlLong> {
  const CqlLong._(super.valueString) : super();

  /// Creates a [CqlLong] from a [BigInt], [int], [num], or numeric [String].
  factory CqlLong(dynamic rawValue) {
    if (rawValue == null) return const CqlLong._(null);
    if (rawValue is BigInt) return CqlLong._(rawValue.toString());
    if (rawValue is int) return CqlLong._(rawValue.toString());
    if (rawValue is String) {
      final validated = _validate(rawValue);
      return CqlLong._(validated);
    }
    throw ArgumentError(
      'CqlLong only supports BigInt, int, or numeric String. Got: $rawValue',
    );
  }

  /// Creates a [CqlLong] from a [num], via `BigInt.from(...)`.
  factory CqlLong.fromNum(num input) => CqlLong(BigInt.from(input));

  /// Creates a [CqlLong] from a [String].
  factory CqlLong.fromString(String input) => CqlLong(input);

  /// Creates a [CqlLong] from a [BigInt].
  factory CqlLong.fromBigInt(BigInt input) => CqlLong(input);

  /// Constructs from a JSON map of shape `{'value': <int|string>}`.
  factory CqlLong.fromJson(Map<String, dynamic> json) {
    final raw = json['value'];
    if (raw == null) return const CqlLong._(null);
    return CqlLong(raw is num ? raw.toString() : raw);
  }

  /// Constructs from a YAML input (string or [YamlMap]).
  factory CqlLong.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return CqlLong.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return CqlLong.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    }
    throw ArgumentError(
      'CqlLong cannot be constructed from $yaml — '
      'neither a YAML string nor a YAML map.',
    );
  }

  /// Attempts to parse [input] as a [CqlLong]. Returns `null` on failure.
  static CqlLong? tryParse(dynamic input) {
    try {
      if (input is BigInt) return CqlLong(input);
      if (input is num) return CqlLong.fromNum(input);
      if (input is String) return CqlLong.fromString(input);
      return null;
    } catch (_) {
      return null;
    }
  }

  static String? _validate(String input) {
    if (input.isEmpty) return null;
    final big = BigInt.tryParse(input);
    if (big == null) {
      throw const FormatException(
        'Invalid Long format. Must be a valid 64-bit integer string.',
      );
    }
    return input;
  }

  /// The [BigInt] value, or `null` for CQL null.
  BigInt? get valueBigInt =>
      valueString == null ? null : BigInt.tryParse(valueString!);

  /// Lossy conversion to Dart [int].
  int? toInt() => valueBigInt?.toInt();

  /// Lossy conversion to Dart [double].
  double? toDouble() => valueBigInt?.toDouble();

  @override
  String get cqlTypeName => 'Long';

  @override
  Map<String, dynamic> toJson() =>
      valueString == null ? const {} : {'value': valueString};

  @override
  bool? equal(Object other) {
    if (other is! CqlLong) return false;
    if (valueBigInt == null || other.valueBigInt == null) return null;
    return valueBigInt == other.valueBigInt;
  }

  /// CQL `equivalent` for Long is the same as `equal` per spec.
  @override
  bool equivalent(Object other) =>
      other is CqlLong && valueBigInt == other.valueBigInt;

  @override
  int compareTo(CqlLong other) {
    if (valueBigInt == null || other.valueBigInt == null) return 0;
    return valueBigInt!.compareTo(other.valueBigInt!);
  }

  @override
  bool operator ==(Object other) =>
      other is CqlLong && valueBigInt == other.valueBigInt;

  @override
  int get hashCode => valueBigInt.hashCode;

  @override
  String toString() => valueString ?? 'null';

  // ---------------------------------------------------------------------------
  // Arithmetic & bitwise — preserved from the original FhirInteger64; useful
  // for engine math without pulling in FHIR plumbing.
  // ---------------------------------------------------------------------------

  CqlLong? operator +(dynamic other) => _op(other, (a, b) => a + b);
  CqlLong? operator -(dynamic other) => _op(other, (a, b) => a - b);
  CqlLong? operator *(dynamic other) => _op(other, (a, b) => a * b);
  CqlLong? operator ~/(dynamic other) => _op(other, (a, b) => a ~/ b);
  CqlLong? operator %(dynamic other) => _op(other, (a, b) => a % b);
  CqlLong? operator -() =>
      valueBigInt == null ? null : CqlLong(-valueBigInt!);
  CqlLong? operator /(dynamic other) =>
      _op(other, (a, b) => BigInt.from(a / b));
  CqlLong? operator ^(dynamic other) => _op(other, (a, b) => a ^ b);
  CqlLong? operator &(dynamic other) => _op(other, (a, b) => a & b);
  CqlLong? operator |(dynamic other) => _op(other, (a, b) => a | b);
  CqlLong? operator ~() =>
      valueBigInt == null ? null : CqlLong(~valueBigInt!);
  CqlLong? operator <<(int n) =>
      valueBigInt == null ? null : CqlLong(valueBigInt! << n);
  CqlLong? operator >>(int n) =>
      valueBigInt == null ? null : CqlLong(valueBigInt! >> n);

  bool operator <(dynamic other) => _cmp(other, (a, b) => a < b);
  bool operator <=(dynamic other) => _cmp(other, (a, b) => a <= b);
  bool operator >(dynamic other) => _cmp(other, (a, b) => a > b);
  bool operator >=(dynamic other) => _cmp(other, (a, b) => a >= b);

  CqlLong? abs() =>
      valueBigInt == null ? null : CqlLong(valueBigInt!.abs());
  CqlLong? gcd(dynamic other) => _op(other, (a, b) => a.gcd(b));
  CqlLong? pow(int exp) =>
      valueBigInt == null ? null : CqlLong(valueBigInt!.pow(exp));
  CqlLong? remainder(dynamic other) =>
      _op(other, (a, b) => a.remainder(b));
  CqlLong? toUnsigned(int width) => valueBigInt == null
      ? null
      : CqlLong(valueBigInt!.toUnsigned(width));
  CqlLong? toSigned(int width) =>
      valueBigInt == null ? null : CqlLong(valueBigInt!.toSigned(width));

  bool get isNegative => valueBigInt?.isNegative ?? false;
  bool get isEven => valueBigInt?.isEven ?? false;
  bool get isOdd => valueBigInt?.isOdd ?? false;

  bool _cmp(dynamic other, bool Function(BigInt, BigInt) f) {
    if (valueBigInt == null) return false;
    final v = _extract(other);
    return v != null && f(valueBigInt!, v);
  }

  CqlLong? _op(dynamic other, BigInt Function(BigInt, BigInt) op) {
    if (valueBigInt == null) return null;
    final v = _extract(other);
    return v == null ? null : CqlLong(op(valueBigInt!, v));
  }

  static BigInt? _extract(dynamic other) {
    if (other is CqlLong) return other.valueBigInt;
    if (other is BigInt) return other;
    if (other is int) return BigInt.from(other);
    return BigInt.tryParse(other.toString());
  }
}
