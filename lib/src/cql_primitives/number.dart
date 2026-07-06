part of 'cql_primitives.dart';

/// Abstract numeric base for [CqlInteger], [CqlLong], and [CqlDecimal].
/// Engine code uses `is CqlNumber` to accept any numeric primitive without
/// enumerating subclasses.
///
/// Not instantiable directly — use [CqlNumber.fromNum] to dispatch to the
/// right subclass based on whether the value is integral.
abstract class CqlNumber extends CqlPrimitive implements Comparable<CqlNumber> {
  const CqlNumber._(super.valueString) : super();

  /// Creates either a [CqlInteger] or [CqlDecimal] from [value].
  ///
  /// - If [value] is an [int], returns a [CqlInteger].
  /// - Otherwise (double / fractional), returns a [CqlDecimal].
  factory CqlNumber.fromNum({required num value}) => value is int
      ? CqlInteger(value.toString())
      : CqlDecimal(value.toString());

  /// Constructs from JSON via [CqlNumber.fromNum].
  factory CqlNumber.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    if (value == null) {
      throw const FormatException(
        'CqlNumber cannot be created with a null value.',
      );
    }
    final num numValue;
    if (value is num) {
      numValue = value;
    } else if (value is String) {
      final parsed = num.tryParse(value);
      if (parsed == null) {
        throw FormatException('CqlNumber cannot parse: $value');
      }
      numValue = parsed;
    } else {
      throw FormatException(
        'CqlNumber requires num or String, got: ${value.runtimeType}',
      );
    }
    return CqlNumber.fromNum(value: numValue);
  }

  /// Constructs from a YAML input (string or [YamlMap]).
  static CqlNumber fromYaml(dynamic yaml) {
    if (yaml is String) {
      return CqlNumber.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return CqlNumber.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    }
    throw ArgumentError('Input must be a YAML string or YAML map.');
  }

  @override
  String get cqlTypeName => 'Number';

  /// The numeric value. Subclasses override with their specialized parsing.
  num? get valueNum {
    if (valueString == null) return null;
    try {
      if (this is CqlInteger) {
        return int.parse(valueString!);
      } else if (this is CqlDecimal) {
        return double.parse(valueString!);
      }
      throw FormatException(
        'CqlNumber cannot interpret non-numeric value: $valueString',
      );
    } catch (_) {
      throw FormatException(
        'CqlNumber cannot parse non-numeric value: $valueString',
      );
    }
  }

  @override
  Map<String, dynamic> toJson() =>
      valueNum == null ? const {} : {'value': valueNum};

  @override
  bool? equal(Object other) {
    if (other is! CqlNumber) return false;
    if (valueNum == null || other.valueNum == null) return null;
    return valueNum == other.valueNum;
  }

  /// Default `equivalent` for numeric types — subclasses ([CqlDecimal]) may
  /// override with scale-aware tolerance.
  @override
  bool equivalent(Object other) =>
      other is CqlNumber && valueNum == other.valueNum;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CqlNumber && valueNum == other.valueNum) ||
      (other is num && valueNum == other);

  @override
  int get hashCode => valueNum.hashCode;

  @override
  String toString() => valueString ?? 'null';

  // ---------------------------------------------------------------------------
  // Comparable + arithmetic / comparison operators. Engine aggregate
  // expressions (avg, variance, etc.) depend on these.
  // ---------------------------------------------------------------------------

  @override
  int compareTo(CqlNumber other) {
    if (valueNum == null || other.valueNum == null) return 0;
    return valueNum!.compareTo(other.valueNum!);
  }

  CqlNumber? operator +(Object other) => _op(other, (a, b) => a + b);
  CqlNumber? operator -(Object other) => _op(other, (a, b) => a - b);
  CqlNumber? operator *(Object other) => _op(other, (a, b) => a * b);
  CqlNumber? operator /(Object other) => _op(other, (a, b) => a / b);
  CqlNumber? operator %(Object other) => _op(other, (a, b) => a % b);
  CqlNumber? operator ~/(Object other) => _op(other, (a, b) => a ~/ b);
  CqlNumber? operator -() =>
      valueNum == null ? null : CqlNumber.fromNum(value: -valueNum!);

  bool operator >(Object other) => _cmp(other, (a, b) => a > b);
  bool operator >=(Object other) => _cmp(other, (a, b) => a >= b);
  bool operator <(Object other) => _cmp(other, (a, b) => a < b);
  bool operator <=(Object other) => _cmp(other, (a, b) => a <= b);

  int round() => valueNum!.round();
  int floor() => valueNum!.floor();
  int ceil() => valueNum!.ceil();
  num abs() => valueNum!.abs();

  bool _bothNonNull(Object other) =>
      valueNum != null && _extract(other) != null;

  CqlNumber? _op(Object other, num Function(num, num) op) {
    if (!_bothNonNull(other)) return null;
    final otherVal = _extract(other)!;
    return this is CqlDecimal || other is CqlDecimal
        ? CqlDecimal(op(valueNum!, otherVal))
        : CqlNumber.fromNum(value: op(valueNum!, otherVal));
  }

  bool _cmp(Object other, bool Function(num, num) op) =>
      _bothNonNull(other) && op(valueNum!, _extract(other)!);

  num? _extract(Object other) {
    if (other is CqlNumber) return other.valueNum;
    if (other is num) return other;
    throw ArgumentError('Expected CqlNumber or num, got: $other.');
  }
}
