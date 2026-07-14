part of 'cql_primitives.dart';

/// Convert a [String] to a [CqlTime].
extension CqlTimeExtension on String {
  /// Returns a [CqlTime] from this string.
  CqlTime get toCqlTime => CqlTime(this);
}

/// CQL System type **Time** ([CQL spec §3.4.7](https://cql.hl7.org/03-developersguide.html#date-datetime-and-time)).
///
/// Clock time (`HH[:MM[:SS[.fff]]]`) — not bound to any date or timezone.
/// Unlike [CqlDateTime], does not inherit from [CqlDateTimeBase]; comparison
/// is component-wise on the string segments rather than calendar-aware.
@immutable
class CqlTime extends CqlPrimitive implements Comparable<CqlTime> {
  /// Creates a [CqlTime] from a string matching `HH[:MM[:SS[.fff]]]`.
  factory CqlTime(dynamic rawValue) {
    final validated = _validateTime(rawValue);
    return CqlTime._(validated);
  }
  const CqlTime._(super.valueString) : super();

  /// Creates a [CqlTime] from individual components.
  factory CqlTime.fromUnits({
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
  }) {
    final h = hour?.toString().padLeft(2, '0') ?? '00';
    var out = h;
    if (minute != null) {
      out += ':${minute.toString().padLeft(2, '0')}';
      if (second != null) {
        out += ':${second.toString().padLeft(2, '0')}';
        if (millisecond != null) {
          out += '.${millisecond.toString().padLeft(3, '0')}';
        }
      }
    }
    return CqlTime(out);
  }

  /// Constructs from a JSON map of shape `{'value': '<HH:MM:SS>'}`.
  factory CqlTime.fromJson(Map<String, dynamic> json) => CqlTime(json['value']);

  /// Constructs from YAML input.
  static CqlTime fromYaml(dynamic yaml) {
    if (yaml is String) {
      return CqlTime.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return CqlTime.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    }
    throw const FormatException('Invalid YAML format for CqlTime');
  }

  /// Attempts to parse [input]. Returns `null` on failure.
  static CqlTime? tryParse(dynamic input) {
    if (input is String) {
      try {
        return CqlTime(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  static String? _validateTime(dynamic input) {
    if (input == null) return null;
    if (input is! String) {
      throw FormatException('Invalid time format, must be a string: $input');
    }
    if (input.isEmpty) return null;
    if (_timeRegex.hasMatch(input)) return input;
    throw FormatException('Invalid time format: $input');
  }

  static final RegExp _timeRegex = RegExp(
    r'^([01][0-9]|2[0-3])(:([0-5][0-9])(:([0-5][0-9]|60)(\.[0-9]+)?)?)?$',
  );

  @override
  String get cqlTypeName => 'Time';

  @override
  Map<String, dynamic> toJson() =>
      valueString == null ? const {} : {'value': valueString};

  @override
  String toString() => valueString ?? 'null';

  @override
  bool? equal(Object other) => _compare(Comparator.equal, other);

  /// CQL `~` for time — see TODO on [CqlDateTimeBase.equivalent]; same
  /// caveat applies here.
  @override
  bool equivalent(Object other) =>
      _compare(Comparator.equivalent, other) ?? false;

  @override
  bool operator ==(Object other) => _compare(Comparator.equal, other) ?? false;

  @override
  int get hashCode => valueString.hashCode;

  @override
  int compareTo(CqlTime other) {
    if ((this > other) ?? false) return 1;
    if ((this < other) ?? false) return -1;
    return 0;
  }

  // ===========================================================================
  // Component accessors
  // ===========================================================================

  /// The hour component (`0..23`), or `null` if no value.
  int? get hour =>
      valueString == null ? null : int.tryParse(valueString!.split(':')[0]);

  /// The minute component (`0..59`), or `null` if not specified.
  int? get minute {
    if (valueString == null) return null;
    final parts = valueString!.split(':');
    return parts.length > 1 ? int.tryParse(parts[1]) : null;
  }

  /// The second component (`0..59`), or `null` if not specified.
  int? get second {
    if (valueString == null) return null;
    final parts = valueString!.split(':');
    if (parts.length > 2) return int.tryParse(parts[2].split('.')[0]);
    return null;
  }

  /// The millisecond component (`0..999`), or `null` if not specified.
  int? get millisecond {
    if (valueString == null) return null;
    final dotParts = valueString!.split('.');
    if (dotParts.length > 1) return int.tryParse(dotParts[1]);
    return null;
  }

  // ===========================================================================
  // Arithmetic — wraps at 24h.
  // ===========================================================================

  /// Returns a new [CqlTime] with the given units added (wraps at 24h),
  /// preserving the original instance's precision.
  CqlTime plus({
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliseconds = 0,
  }) {
    final origPrecision = millisecond != null
        ? TemporalPrecisionEnum.millisecond
        : second != null
            ? TemporalPrecisionEnum.second
            : minute != null
                ? TemporalPrecisionEnum.minute
                : TemporalPrecisionEnum.hour;

    var newMs = (millisecond ?? 0) + milliseconds;
    var newSec = (second ?? 0) + seconds + (newMs ~/ 1000);
    newMs %= 1000;
    var newMin = (minute ?? 0) + minutes + (newSec ~/ 60);
    newSec %= 60;
    var newHr = (hour ?? 0) + hours + (newMin ~/ 60);
    newMin %= 60;
    newHr %= 24;

    return CqlTime.fromUnits(
      hour: newHr,
      minute: newMin,
      second: newSec,
      millisecond: newMs,
    ).adjustToPrecision(origPrecision);
  }

  /// Returns a new [CqlTime] with the given units subtracted (wraps at 24h),
  /// preserving the original instance's precision.
  CqlTime subtract({
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliseconds = 0,
  }) {
    final origPrecision = millisecond != null
        ? TemporalPrecisionEnum.millisecond
        : second != null
            ? TemporalPrecisionEnum.second
            : minute != null
                ? TemporalPrecisionEnum.minute
                : TemporalPrecisionEnum.hour;

    var newMs = (millisecond ?? 0) - milliseconds;
    var newSec = (second ?? 0) - seconds;
    var newMin = (minute ?? 0) - minutes;
    var newHr = (hour ?? 0) - hours;

    while (newMs < 0) {
      newMs += 1000;
      newSec -= 1;
    }
    while (newSec < 0) {
      newSec += 60;
      newMin -= 1;
    }
    while (newMin < 0) {
      newMin += 60;
      newHr -= 1;
    }
    newHr = (newHr % 24 + 24) % 24;

    return CqlTime.fromUnits(
      hour: newHr,
      minute: newMin,
      second: newSec,
      millisecond: newMs,
    ).adjustToPrecision(origPrecision);
  }

  /// Truncates or zero-fills to the given precision (hour/minute/second/millisecond).
  CqlTime adjustToPrecision(TemporalPrecisionEnum precision) {
    if (!precision.isValidTimePrecision) {
      throw ArgumentError(
        'Precision must be hour, minute, second, or millisecond.',
      );
    }
    final h = hour ?? 0;
    final m = minute ?? 0;
    final s = second ?? 0;
    final ms = millisecond ?? 0;

    switch (precision) {
      case TemporalPrecisionEnum.hour:
        return CqlTime.fromUnits(hour: h);
      case TemporalPrecisionEnum.minute:
        return CqlTime.fromUnits(hour: h, minute: m);
      case TemporalPrecisionEnum.second:
        return CqlTime.fromUnits(hour: h, minute: m, second: s);
      case TemporalPrecisionEnum.millisecond:
        return CqlTime.fromUnits(
          hour: h,
          minute: m,
          second: s,
          millisecond: ms,
        );
      case TemporalPrecisionEnum.year:
      case TemporalPrecisionEnum.month:
      case TemporalPrecisionEnum.day:
        throw ArgumentError('Unhandled precision: $precision');
    }
  }

  // ===========================================================================
  // Comparison
  // ===========================================================================

  bool? operator >(Object other) => _compare(Comparator.greaterThan, other);
  bool? operator >=(Object other) =>
      _compare(Comparator.greaterThanEqual, other);
  bool? operator <(Object other) => _compare(Comparator.lessThan, other);
  bool? operator <=(Object other) => _compare(Comparator.lessThanEqual, other);

  bool? isAfter(Object other) => _compare(Comparator.greaterThan, other);
  bool? isBefore(Object other) => _compare(Comparator.lessThan, other);
  bool? isSameOrAfter(Object other) =>
      _compare(Comparator.greaterThanEqual, other);
  bool? isSameOrBefore(Object other) =>
      _compare(Comparator.lessThanEqual, other);
  bool? isEqual(Object other) => _compare(Comparator.equal, other);
  bool? isEquivalent(Object other) => _compare(Comparator.equivalent, other);

  /// Component-wise comparison. Returns `null` when precisions differ such
  /// that the comparison is uncertain, `bool` otherwise.
  bool? _compare(Comparator comparator, Object other) {
    final rhs = other is CqlTime
        ? other
        : other is String
            ? CqlTime.tryParse(other)
            : null;
    if (rhs == null) return false;
    if (valueString == null || rhs.valueString == null) return null;

    final lhsParts = valueString!.split(':');
    final rhsParts = rhs.valueString!.split(':');
    if (lhsParts.length != rhsParts.length) return null;

    for (var i = 0; i < lhsParts.length; i++) {
      final a = double.parse(lhsParts[i]);
      final b = double.parse(rhsParts[i]);
      switch (comparator) {
        case Comparator.equal:
        case Comparator.equivalent:
          if (a != b) return false;
        case Comparator.greaterThan:
          if (a < b) return false;
          if (a > b) return true;
        case Comparator.lessThan:
          if (a > b) return false;
          if (a < b) return true;
        case Comparator.greaterThanEqual:
          if (a < b) return false;
          if (a > b) return true;
        case Comparator.lessThanEqual:
          if (a > b) return false;
          if (a < b) return true;
      }
    }
    return comparator == Comparator.equal ||
        comparator == Comparator.equivalent ||
        comparator == Comparator.greaterThanEqual ||
        comparator == Comparator.lessThanEqual;
  }
}

/// Time-only precisions (hour, minute, second, millisecond) — used by
/// [CqlTime.adjustToPrecision].
extension TimePrecisionCheck on TemporalPrecisionEnum {
  /// `true` for hour, minute, second, or millisecond precisions.
  bool get isValidTimePrecision =>
      this == TemporalPrecisionEnum.hour ||
      this == TemporalPrecisionEnum.minute ||
      this == TemporalPrecisionEnum.second ||
      this == TemporalPrecisionEnum.millisecond;
}
