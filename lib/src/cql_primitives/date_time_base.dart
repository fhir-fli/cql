part of 'cql_primitives.dart';

/// Abstract base for the CQL System temporal types: [CqlDate], [CqlDateTime],
/// (and [CqlTime] is *not* a subclass — pure clock-time, no date components).
///
/// Stores partial-precision date/time values. Year through second are `int?`,
/// microsecond is `String?` (preserves leading zeros), `timeZoneOffset` is
/// `num?` (decimal hours, e.g. `-5.5` for `-05:30`).
///
/// Comparison semantics follow [CQL spec §3.4.6](https://cql.hl7.org/03-developersguide.html#datetime-comparison):
/// `equal` returns `null` when precisions diverge at a comparable level
/// (three-valued); `equivalent` should truncate to the lower precision before
/// comparing (see TODO in [equivalent]).
@immutable
abstract class CqlDateTimeBase extends CqlPrimitive
    implements Comparable<CqlDateTimeBase> {
  const CqlDateTimeBase._({
    required String? valueString,
    required this.year,
    required this.isUtc,
    this.month,
    this.day,
    this.hour,
    this.minute,
    this.second,
    this.millisecond,
    this.microsecond,
    this.timeZoneOffset,
  })  : assert(
          year == null || (year >= 1 && year <= 9999),
          'Invalid year: must be between 1 and 9999.',
        ),
        assert(
          month == null || (month >= 1 && month <= 12),
          'Invalid month: must be between 1 and 12.',
        ),
        assert(
          day == null || month != null,
          'Day cannot be provided without a month.',
        ),
        assert(
          day == null ||
              (day >= 1 &&
                  day <=
                      (month == 2 &&
                              year != null &&
                              (year % 4 == 0 &&
                                  (year % 100 != 0 || year % 400 == 0))
                          ? 29
                          : month == 0
                              ? 0
                              : month == 2
                                  ? 28
                                  : month == 4 ||
                                          month == 6 ||
                                          month == 9 ||
                                          month == 11
                                      ? 30
                                      : 31)),
          'Invalid day for given year and month.',
        ),
        assert(
          hour == null || day != null,
          'Hour cannot be provided without a day.',
        ),
        assert(
          hour == null || (hour >= 0 && hour <= 23),
          'Invalid hour: must be between 0 and 23.',
        ),
        assert(
          minute == null || hour != null,
          'Minute cannot be provided without an hour.',
        ),
        assert(
          minute == null || (minute >= 0 && minute <= 59),
          'Invalid minute: must be between 0 and 59.',
        ),
        assert(
          second == null || minute != null,
          'Second cannot be provided without a minute.',
        ),
        assert(
          second == null || (second >= 0 && second <= 59),
          'Invalid second: must be between 0 and 59.',
        ),
        assert(
          millisecond == null || second != null,
          'Millisecond cannot be provided without a second.',
        ),
        assert(
          millisecond == null || (millisecond >= 0 && millisecond <= 999),
          'Invalid millisecond: must be between 0 and 999.',
        ),
        assert(
          microsecond == null || millisecond != null,
          'Microsecond cannot be provided without a millisecond.',
        ),
        assert(
          microsecond == null || microsecond.length <= 6,
          'Invalid microsecond: at most 6 digits.',
        ),
        assert(
          timeZoneOffset == null ||
              (timeZoneOffset <= 14 && timeZoneOffset >= -14),
          'Invalid time zone offset: must be between -14 and 14.',
        ),
        super(valueString);

  /// Year (1..9999), or `null` if not specified.
  final int? year;

  /// Month (1..12), or `null` if not specified.
  final int? month;

  /// Day (1..31, validated against year/month), or `null` if not specified.
  final int? day;

  /// Hour (0..23), or `null` if not specified.
  final int? hour;

  /// Minute (0..59), or `null` if not specified.
  final int? minute;

  /// Second (0..59), or `null` if not specified.
  final int? second;

  /// Millisecond (0..999), or `null` if not specified.
  final int? millisecond;

  /// Microsecond as a string (preserves leading zeros, ≤ 6 digits), or `null`.
  final String? microsecond;

  /// Timezone offset in decimal hours (e.g. `-5.5` for `-05:30`),
  /// or `null` if not specified.
  final num? timeZoneOffset;

  /// `true` if the original input used the `Z` suffix or `+00:00`.
  final bool isUtc;

  @override
  String get cqlTypeName => 'DateTimeBase';

  /// Realizes the partial-precision value into a Dart [DateTime] with
  /// best-effort defaults for missing components. Returns `null` if
  /// [year] is unset.
  DateTime? get valueDateTime => year == null
      ? null
      : isUtc
          ? DateTime.utc(
              year!,
              month ?? 1,
              day ?? 1,
              hour ?? 0,
              minute ?? 0,
              second ?? 0,
              millisecond ?? 0,
              _convertMicrosecondToInt(microsecond),
            )
          : DateTime(
              year!,
              month ?? 1,
              day ?? 1,
              hour ?? 0,
              minute ?? 0,
              second ?? 0,
              millisecond ?? 0,
              _convertMicrosecondToInt(microsecond),
            );

  @override
  String toString() => _formattedString ?? 'null';

  String? get _formattedString => _buildString(
        year,
        month,
        day,
        hour,
        minute,
        second,
        millisecond,
        microsecond,
        timeZoneOffset,
        isUtc,
      );

  static String? _formattedStringFromMap(Map<String, dynamic> map) =>
      _buildString(
        map['year'] as num?,
        map['month'] as num?,
        map['day'] as num?,
        map['hour'] as num?,
        map['minute'] as num?,
        map['second'] as num?,
        map['millisecond'] as num?,
        map['microsecond'] as String?,
        map['timeZoneOffset'] as num?,
        map['isUtc'] == 0,
      );

  static String? _buildString(
    num? year,
    num? month,
    num? day,
    num? hour,
    num? minute,
    num? second,
    num? millisecond,
    String? microsecond,
    num? timeZoneOffset,
    bool isUtc,
  ) {
    if (year == null) return null;
    final buffer = StringBuffer(year.toString().padLeft(4, '0'));
    if (month != null) buffer.write('-${month.toString().padLeft(2, '0')}');
    if (day != null) buffer.write('-${day.toString().padLeft(2, '0')}');
    if (hour != null) {
      buffer.write('T${hour.toString().padLeft(2, '0')}');
      if (minute != null) {
        buffer.write(':${minute.toString().padLeft(2, '0')}');
        if (second != null) {
          buffer.write(':${second.toString().padLeft(2, '0')}');
          if (millisecond != null || microsecond != null) {
            buffer
              ..write('.')
              ..write(millisecond?.toString().padLeft(3, '0') ?? '000');
            if (microsecond != null) buffer.write(microsecond);
          }
        }
      }
    }
    if (isUtc) {
      if (hour == null &&
          minute == null &&
          second == null &&
          millisecond == null) {
        buffer.write('T');
      }
      if (timeZoneOffset != null && timeZoneOffset == 0) {
        buffer.write('+00:00');
      } else {
        buffer.write('Z');
      }
    } else if (timeZoneOffset != null) {
      if (hour == null &&
          minute == null &&
          second == null &&
          millisecond == null) {
        buffer.write('T');
      }
      // Render fractional offsets too (+05:30, +05:45); the previous
      // hardcoded ':00' truncated half- and quarter-hour zones.
      buffer.write(timeZoneOffset.toDouble().timeZoneOffsetToString);
    }
    return buffer.toString();
  }

  /// ISO 8601 string of the realized [valueDateTime], or `null`.
  String? toIso8601String() => valueDateTime?.toIso8601String();

  @override
  Map<String, dynamic> toJson() =>
      (valueString?.isNotEmpty ?? false) ? {'value': valueString} : const {};

  /// Map representation of the partial-precision components.
  Map<String, dynamic> toMap() => <String, Object?>{
        'year': year,
        'month': month,
        'day': day,
        'hour': hour,
        'minute': minute,
        'second': second,
        'millisecond': millisecond,
        'microsecond': microsecond,
        'timeZoneOffset': timeZoneOffset,
        'isUtc': isUtc ? 0 : 1,
      };

  // ===========================================================================
  // CQL three-valued equality + equivalence
  // ===========================================================================

  /// CQL `=` on temporals: three-valued. Returns `null` when precisions
  /// diverge such that the comparison is uncertain.
  @override
  bool? equal(Object other) => _compare(Comparator.equal, other);

  /// CQL `~` on temporals.
  ///
  // TODO(cql-spec): per CQL spec §3.4.6, equivalent should truncate both
  /// operands to the lower precision before comparing (so `@2012 ~ @2012-01-01`
  /// is true). Current behavior mirrors the original engine and treats
  /// equivalent identically to equal, returning false on precision mismatch.
  /// Fix when the test corpus is in place to verify.
  @override
  bool equivalent(Object other) =>
      _compare(Comparator.equivalent, other) ?? false;

  // ===========================================================================
  // Comparable + precision-aware comparison
  // ===========================================================================

  @override
  int compareTo(CqlDateTimeBase other) {
    var result = _compareParts(year, other.year);
    if (result != 0) return result;
    result = _compareParts(month, other.month);
    if (result != 0) return result;
    result = _compareParts(day, other.day);
    if (result != 0) return result;
    result = _compareParts(hour, other.hour);
    if (result != 0) return result;
    result = _compareParts(minute, other.minute);
    if (result != 0) return result;
    result = _compareParts(second, other.second);
    if (result != 0) return result;
    result = _compareParts(millisecond, other.millisecond);
    if (result != 0) return result;
    return _compareMicroseconds(microsecond, other.microsecond);
  }

  static int _compareParts(num? a, num? b) {
    if (a == null && b == null) return 0;
    if (a == null) return -1;
    if (b == null) return 1;
    return a.compareTo(b);
  }

  static int _compareMicroseconds(String? a, String? b) {
    if (a == null && b == null) return 0;
    if (a == null) return -1;
    if (b == null) return 1;
    return a.trim().padRight(6, '0').compareTo(b.trim().padRight(6, '0'));
  }

  /// Normalizes timezones (shifts both to UTC), then runs
  /// [_compareWithPrecision] and maps the int? result through [comparator].
  bool? _compare(Comparator comparator, Object o) {
    if (identical(this, o)) return _comparatorResult(comparator, 0);

    var lhs = constructor<CqlDateTime>(input: this) as CqlDateTime;
    var rhs = o is CqlDateTimeBase
        ? constructor<CqlDateTime>(input: o.valueString) as CqlDateTime
        : (o is DateTime || o is String)
            ? constructor<CqlDateTime>(input: o) as CqlDateTime
            : null;

    final lhsTimeZoneOffset = ExtendedDuration(
      hours: (lhs.timeZoneOffset?.toInt() ?? 0) * -1,
      minutes: (((lhs.timeZoneOffset ?? 0) % 1 * 60).toInt()) * -1,
    );
    final rhsTimeZoneOffset = ExtendedDuration(
      hours: (rhs?.timeZoneOffset?.toInt() ?? 0) * -1,
      minutes: (((rhs?.timeZoneOffset ?? 0) % 1 * 60).toInt()) * -1,
    );

    lhs = lhs + lhsTimeZoneOffset;
    rhs = rhs == null ? null : rhs + rhsTimeZoneOffset;

    lhs = CqlDateTime.fromUnits(
      year: lhs.year!,
      month: lhs.month,
      day: lhs.day,
      hour: lhs.hour,
      minute: lhs.minute,
      second: lhs.second,
      millisecond: lhs.millisecond,
      microsecond:
          lhs.microsecond == null ? null : int.tryParse(lhs.microsecond!),
    );
    rhs = rhs == null
        ? null
        : CqlDateTime.fromUnits(
            year: rhs.year!,
            month: rhs.month,
            day: rhs.day,
            hour: rhs.hour,
            minute: rhs.minute,
            second: rhs.second,
            millisecond: rhs.millisecond,
            microsecond:
                rhs.microsecond == null ? null : int.tryParse(rhs.microsecond!),
          );

    if (rhs == null) return false;
    final comparisonResult = _compareWithPrecision(lhs, rhs);
    return _comparatorResult(comparator, comparisonResult);
  }

  /// Returns `int?` per the CQL three-valued model:
  /// - `0` / `+n` / `-n` when both operands share enough precision to decide
  /// - `null` when one operand carries a component the other lacks at the
  ///   first significant differing level (uncertain comparison).
  static int? _compareWithPrecision(CqlDateTimeBase lhs, CqlDateTimeBase rhs) {
    if (lhs.year != null || rhs.year != null) {
      if (lhs.year == null || rhs.year == null) return null;
      if (lhs.year != rhs.year) return lhs.year!.compareTo(rhs.year!);
    }
    if (lhs.month != null || rhs.month != null) {
      if (lhs.month == null || rhs.month == null) return null;
      if (lhs.month != rhs.month) return lhs.month!.compareTo(rhs.month!);
    }
    if (lhs.day != null || rhs.day != null) {
      if (lhs.day == null || rhs.day == null) return null;
      if (lhs.day != rhs.day) return lhs.day!.compareTo(rhs.day!);
    }
    if (lhs.hour != null || rhs.hour != null) {
      if (lhs.hour == null || rhs.hour == null) return null;
      if (lhs.hour != rhs.hour) return lhs.hour!.compareTo(rhs.hour!);
    }
    if (lhs.minute != null || rhs.minute != null) {
      if (lhs.minute == null || rhs.minute == null) return null;
      if (lhs.minute != rhs.minute) {
        return lhs.minute!.compareTo(rhs.minute!);
      }
    }
    if (lhs.second != null || rhs.second != null) {
      if (lhs.second == null || rhs.second == null) return null;
      if (lhs.second != rhs.second) {
        return lhs.second!.compareTo(rhs.second!);
      }
    }
    if (lhs.millisecond != null || rhs.millisecond != null) {
      final lhsMs = lhs.millisecond == null || lhs.millisecond == 0
          ? '000'
          : lhs.millisecond!.toString().padLeft(3, '0');
      final rhsMs = rhs.millisecond == null || rhs.millisecond == 0
          ? '000'
          : rhs.millisecond!.toString().padLeft(3, '0');
      final lhsUs = lhs.microsecond?.padRight(6, '0') ?? '000000';
      final rhsUs = rhs.microsecond?.padRight(6, '0') ?? '000000';
      final lhsPartial = int.parse('$lhsMs$lhsUs');
      final rhsPartial = int.parse('$rhsMs$rhsUs');
      return lhsPartial.compareTo(rhsPartial);
    }
    return 0;
  }

  static bool? _comparatorResult(Comparator c, int? result) {
    if (result == null) return null;
    switch (c) {
      case Comparator.equal:
      case Comparator.equivalent:
        return result == 0;
      case Comparator.greaterThan:
        return result > 0;
      case Comparator.greaterThanEqual:
        return result >= 0;
      case Comparator.lessThan:
        return result < 0;
      case Comparator.lessThanEqual:
        return result <= 0;
    }
  }

  // ===========================================================================
  // Factory dispatchers — build CqlDate / CqlDateTime from raw input
  // ===========================================================================

  /// Dispatches to the right subclass ([CqlDate] or [CqlDateTime]) based on
  /// the type parameter [T] and produces an instance from `input`, which may
  /// be a [String], a Dart [DateTime], or another [CqlDateTimeBase].
  static CqlDateTimeBase constructor<T>({dynamic input}) {
    if (input == null) return _constructor<T>({}, regexValid: true);
    String? value;
    if (input is String) {
      value = _cleanInput(input);
    } else if (input is DateTime) {
      value = input.toIso8601String();
      value += input.isUtc ? 'Z' : _formatTimezone(input.timeZoneOffset);
    } else if (input is CqlDateTimeBase && input.valueString != null) {
      value = _cleanInput(input.valueString!);
    } else {
      throw ArgumentError('Invalid input for CqlDateTimeBase: $input');
    }
    return _constructor<T>(formatDateTimeString<T>(value), regexValid: true);
  }

  static CqlDateTimeBase _constructor<T>(
    Map<String, dynamic> dtMap, {
    required bool regexValid,
  }) {
    if (T == CqlDateTime) {
      if (dtMap.isEmpty) {
        return CqlDateTime.fromBase(
          valueString: null,
          year: null,
          month: null,
          day: null,
          hour: null,
          minute: null,
          second: null,
          millisecond: null,
          microsecond: null,
          timeZoneOffset: null,
          isUtc: false,
        );
      } else if (dtMap['year'] == null) {
        throw ArgumentError('Year is required for CqlDateTime');
      }
      return CqlDateTime.fromBase(
        valueString: _formattedStringFromMap(dtMap),
        year: dtMap['year']! as int,
        month: dtMap['month'] as int?,
        day: dtMap['day'] as int?,
        hour: dtMap['hour'] as int?,
        minute: dtMap['minute'] as int?,
        second: dtMap['second'] as int?,
        millisecond: dtMap['millisecond'] as int?,
        microsecond: dtMap['microsecond'] as String?,
        timeZoneOffset: dtMap['timeZoneOffset'] as num?,
        isUtc: dtMap['isUtc'] == 0,
      );
    } else if (T == CqlDate) {
      if (dtMap.isEmpty) {
        return CqlDate.fromBase(
          valueString: null,
          year: null,
          month: null,
          day: null,
          isUtc: false,
        );
      } else if (dtMap['year'] == null) {
        throw ArgumentError('Year is required for CqlDate');
      }
      return CqlDate.fromBase(
        valueString: _formattedStringFromMap(dtMap),
        year: dtMap['year'] as int?,
        month: dtMap['month'] as int?,
        day: dtMap['day'] as int?,
        timeZoneOffset: dtMap['timeZoneOffset'] as num?,
        isUtc: dtMap['isUtc'] == 0,
      );
    }
    throw ArgumentError('Unsupported CqlDateTimeBase subtype $T');
  }

  /// Adds an [ExtendedDuration] to [base] and produces a new instance of
  /// subtype [T].
  static CqlDateTimeBase plus<T>(CqlDateTimeBase base, ExtendedDuration o) {
    final micros = int.tryParse(base.microsecond?.padRight(6, '0') ?? '0') ?? 0;
    final y = (base.year ?? 0) + o.years;
    final m = (base.month ?? 1) + o.months;
    final d = (base.day ?? 1) + o.days;
    final h = (base.hour ?? 0) + o.hours;
    final min = (base.minute ?? 0) + o.minutes;
    final s = (base.second ?? 0) + o.seconds;
    final ms = (base.millisecond ?? 0) + o.milliseconds;
    final us = micros + o.microseconds;

    final dt = base.isUtc
        ? DateTime.utc(y, m, d, h, min, s, ms, us)
        : DateTime(y, m, d, h, min, s, ms, us);

    return fromUnits<T>(
      year: dt.year,
      month: base.month != null ? dt.month : null,
      day: base.day != null ? dt.day : null,
      hour: base.hour != null ? dt.hour : null,
      minute: base.minute != null ? dt.minute : null,
      second: base.second != null ? dt.second : null,
      millisecond: base.millisecond != null ? dt.millisecond : null,
      microsecond: base.microsecond != null ? dt.microsecond : null,
      timeZoneOffset: base.timeZoneOffset,
      isUtc: base.isUtc,
    );
  }

  /// Subtracts an [ExtendedDuration] from [base]. Implemented as negated plus.
  static CqlDateTimeBase minus<T>(CqlDateTimeBase base, ExtendedDuration o) =>
      plus<T>(
        base,
        ExtendedDuration(
          years: -o.years,
          months: -o.months,
          days: -o.days,
          hours: -o.hours,
          minutes: -o.minutes,
          seconds: -o.seconds,
          milliseconds: -o.milliseconds,
          microseconds: -o.microseconds,
        ),
      );

  static String _cleanInput(String input) {
    var v = input.trim();
    if (v.startsWith('"') || v.startsWith("'") || v.startsWith('`')) {
      v = v.substring(1);
    }
    if (v.endsWith('"') || v.endsWith("'") || v.endsWith('`')) {
      v = v.substring(0, v.length - 1);
    }
    return v;
  }

  static String _formatTimezone(Duration offset) {
    final hours = offset.inHours.abs().toString().padLeft(2, '0');
    final minutes = (offset.inMinutes.abs() % 60).toString().padLeft(2, '0');
    return '${offset.isNegative ? '-' : '+'}$hours:$minutes';
  }

  /// Builds a [CqlDateTimeBase] of subtype [T] from a Dart [DateTime]
  /// while preserving the timezone semantics of [reference].
  static CqlDateTimeBase fromMathUnits<T>(
    DateTime dt,
    CqlDateTimeBase reference,
  ) =>
      fromUnits<T>(
        year: dt.year,
        month: dt.month,
        day: dt.day,
        hour: dt.hour,
        minute: dt.minute,
        second: dt.second,
        millisecond: dt.millisecond,
        microsecond: dt.microsecond,
        timeZoneOffset: reference.timeZoneOffset,
        isUtc: reference.isUtc,
      );

  /// Constructs a [CqlDateTimeBase] of subtype [T] directly from components.
  static CqlDateTimeBase fromUnits<T>({
    required int year,
    required bool isUtc,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
    num? timeZoneOffset,
  }) {
    final map = <String, Object?>{
      'year': year,
      'month': month,
      'day': day,
      'hour': hour,
      'minute': minute,
      'second': second,
      'millisecond': millisecond,
      'microsecond': microsecond?.toString(),
      'timeZoneOffset': timeZoneOffset,
      'isUtc': isUtc ? 0 : 1,
    };
    return _constructor<T>(map, regexValid: true);
  }

  /// Returns the [Duration] between this and [other]. Throws if either
  /// year is unset, or if [other] is not a [CqlDateTimeBase] or [DateTime].
  Duration difference(dynamic other) {
    if (other is! CqlDateTimeBase && other is! DateTime) {
      throw ArgumentError(
        '`difference` requires a CqlDateTimeBase or DateTime, got: $other',
      );
    }
    if (year == null) {
      throw ArgumentError('The year must be set to calculate the difference');
    }

    final lhsDt = DateTime(
      year!,
      month ?? 0,
      day ?? 0,
      hour ?? 0,
      minute ?? 0,
      second ?? 0,
      millisecond ?? 0,
      microsecond == null
          ? 0
          : ((num.tryParse(microsecond!) ?? 0) / 1000).toInt(),
    );
    final asBase = other is DateTime
        ? CqlDateTime.fromDateTime(other)
        : other as CqlDateTimeBase;
    if (asBase.year == null) {
      throw ArgumentError('The year must be set to calculate the difference');
    }
    final rhsDt = DateTime(
      asBase.year!,
      asBase.month ?? 0,
      asBase.day ?? 0,
      asBase.hour ?? 0,
      asBase.minute ?? 0,
      asBase.second ?? 0,
      asBase.millisecond ?? 0,
      asBase.microsecond == null
          ? 0
          : ((num.tryParse(asBase.microsecond!) ?? 0) / 1000).toInt(),
    );
    return lhsDt.difference(rhsDt);
  }

  @override
  int get hashCode => valueString.hashCode;

  @override
  bool operator ==(Object other) => _compare(Comparator.equal, other) ?? false;

  /// `>`, `>=`, `<`, `<=` use [_compare] and return `bool?` (null on
  /// precision mismatch).
  bool? operator >(Object other) => _compare(Comparator.greaterThan, other);
  bool? operator >=(Object other) =>
      _compare(Comparator.greaterThanEqual, other);
  bool? operator <(Object other) => _compare(Comparator.lessThan, other);
  bool? operator <=(Object other) => _compare(Comparator.lessThanEqual, other);

  bool? isBefore(CqlDateTimeBase other) => _compare(Comparator.lessThan, other);
  bool? isAfter(CqlDateTimeBase other) =>
      _compare(Comparator.greaterThan, other);
  bool? isSameOrBefore(CqlDateTimeBase other) =>
      _compare(Comparator.lessThanEqual, other);
  bool? isSameOrAfter(CqlDateTimeBase other) =>
      _compare(Comparator.greaterThanEqual, other);
  bool? isAtSameMomentAs(CqlDateTimeBase other) =>
      _compare(Comparator.equal, other);
  bool? isEqual(Object other) => _compare(Comparator.equal, other);
  bool? isEquivalent(Object other) => _compare(Comparator.equivalent, other);

  /// Subclasses implement `+` returning their own subtype.
  CqlDateTimeBase? operator +(ExtendedDuration other);

  /// Subclasses implement `-` returning their own subtype.
  CqlDateTimeBase? operator -(ExtendedDuration other);

  // ===========================================================================
  // ISO 8601 / FHIR date-time regex parsing
  // ===========================================================================

  /// Regex matching the full FHIR/CQL dateTime grammar. Same shape as
  /// [HL7 datatypes#dateTime](https://build.fhir.org/datatypes.html#dateTime).
  static final RegExp dateTimeExp = RegExp(
    r'(?<year>[0-9]{4})(-(?<month>0[1-9]|1[0-2])(-(?<day>0[1-9]|[1-2][0-9]|3[0-1])(T((?<hour>[01][0-9]|2[0-3])(:(?<minute>[0-5][0-9])(:(?<second>[0-5][0-9]|60)(\.(?<fraction>[0-9]+))?)?)?)?(?<timezone>Z|(\+|-)([0-1][0-9]|2[0-3])(:[0-5][0-9])?)?)?)?)?',
  );

  /// Parses [s] into a component map. The type parameter [T] guides which
  /// components are required (CqlDate ignores time components).
  static Map<String, dynamic> formatDateTimeString<T>(String s) {
    final match = dateTimeExp.firstMatch(s);
    if (match == null) {
      throw ArgumentError('Invalid date-time string (no match): $s');
    }
    final fraction = match.namedGroup('fraction');
    int? millisecond;
    String? microsecond;
    if (fraction != null) {
      if (fraction.length >= 3) {
        millisecond = int.tryParse(fraction.substring(0, 3));
      } else {
        millisecond = int.tryParse(fraction.padRight(3, '0'));
      }
      if (fraction.length > 3) microsecond = fraction.substring(3);
    }
    return <String, Object?>{
      'year': int.tryParse(match.namedGroup('year') ?? ''),
      'month': int.tryParse(match.namedGroup('month') ?? ''),
      'day': int.tryParse(match.namedGroup('day') ?? ''),
      'hour':
          T == CqlDate ? null : int.tryParse(match.namedGroup('hour') ?? ''),
      'minute':
          T == CqlDate ? null : int.tryParse(match.namedGroup('minute') ?? ''),
      'second':
          T == CqlDate ? null : int.tryParse(match.namedGroup('second') ?? ''),
      'millisecond': T == CqlDate ? null : millisecond,
      'microsecond': T == CqlDate ? null : microsecond,
      'timeZoneOffset': T == CqlDate
          ? null
          : match.namedGroup('timezone')?.stringToTimeZoneOffset,
      'isUtc': (match.namedGroup('timezone')?.contains('Z') ?? false) ||
              (T != CqlDate &&
                  (match.namedGroup('timezone')?.stringToTimeZoneOffset ?? 0) ==
                      0 &&
                  match.namedGroup('timezone') != null)
          ? 0
          : 1,
    };
  }

  static int _convertMicrosecondToInt(String? microsecond) {
    if (microsecond == null) return 0;
    var s = microsecond.padRight(6, '0');
    if (s.length > 6) s = s.substring(0, 6);
    return (int.tryParse(s) ?? 0) ~/ 1000;
  }

  // ===========================================================================
  // Precision helpers
  // ===========================================================================

  /// Per [CqlDateTime] / instant precision (down to second with timezone).
  bool get isValidInstantPrecision =>
      year != null &&
      month != null &&
      day != null &&
      hour != null &&
      minute != null &&
      second != null &&
      timeZoneOffset != null;

  /// `CqlDate` precision — only year/month/day, no time portion.
  bool get isValidDatePrecision =>
      hasYear &&
      hour == null &&
      minute == null &&
      second == null &&
      millisecond == null;

  /// `CqlDateTime` precision — at least year.
  bool get isValidFhirDateTimePrecision => hasYear;

  bool get hasYear => year != null;
  bool get hasMonth => hasYear && month != null;
  bool get hasDay => hasMonth && day != null;
  bool get hasHours => hasDay && hour != null;
  bool get hasMinutes => hasHours && minute != null;
  bool get hasSeconds => hasMinutes && second != null;
  bool get hasMilliseconds => hasSeconds && millisecond != null;
  bool get hasTimezoneOffset => timeZoneOffset != null;

  bool get yearsPrecision =>
      hasYear &&
      month == null &&
      day == null &&
      hour == null &&
      minute == null &&
      second == null &&
      millisecond == null;
  bool get monthsPrecision =>
      hasMonth &&
      day == null &&
      hour == null &&
      minute == null &&
      second == null &&
      millisecond == null;
  bool get daysPrecision =>
      hasDay &&
      hour == null &&
      minute == null &&
      second == null &&
      millisecond == null;
  bool get hoursPrecision =>
      hasHours && minute == null && second == null && millisecond == null;
  bool get minutesPrecision =>
      hasMinutes && second == null && millisecond == null;
  bool get secondsPrecision => hasSeconds && millisecond == null;

  /// `true` if [other] has the same precision as `this`.
  bool isPrecisionEquivalentTo(CqlDateTimeBase other) =>
      (yearsPrecision && other.yearsPrecision) ||
      (monthsPrecision && other.monthsPrecision) ||
      (daysPrecision && other.daysPrecision) ||
      (hoursPrecision && other.hoursPrecision) ||
      (minutesPrecision && other.minutesPrecision) ||
      (secondsPrecision && other.secondsPrecision);

  /// Returns a new instance with components at or below [precision] preserved
  /// and lower-precision components zero-filled or dropped.
  CqlDateTimeBase adjustToPrecision(TemporalPrecisionEnum precision) {
    int orDefault(int? value, int def) => value ?? def;

    if (this is CqlDate) {
      switch (precision) {
        case TemporalPrecisionEnum.year:
          return CqlDate.fromUnits(year: year!, isUtc: isUtc);
        case TemporalPrecisionEnum.month:
          return CqlDate.fromUnits(
            year: year!,
            month: orDefault(month, 1),
            isUtc: isUtc,
          );
        case TemporalPrecisionEnum.day:
          return CqlDate.fromUnits(
            year: year!,
            month: orDefault(month, 1),
            day: orDefault(day, 1),
            isUtc: isUtc,
          );
        case TemporalPrecisionEnum.hour:
        case TemporalPrecisionEnum.minute:
        case TemporalPrecisionEnum.second:
        case TemporalPrecisionEnum.millisecond:
          throw ArgumentError('CqlDate cannot support precision beyond day.');
      }
    }

    if (this is CqlDateTime) {
      return CqlDateTime.fromUnits(
        year: year!,
        month: precision.index >= TemporalPrecisionEnum.month.index
            ? orDefault(month, 1)
            : null,
        day: precision.index >= TemporalPrecisionEnum.day.index
            ? orDefault(day, 1)
            : null,
        hour: precision.index >= TemporalPrecisionEnum.hour.index
            ? orDefault(hour, 0)
            : null,
        minute: precision.index >= TemporalPrecisionEnum.minute.index
            ? orDefault(minute, 0)
            : null,
        second: precision.index >= TemporalPrecisionEnum.second.index
            ? orDefault(second, 0)
            : null,
        millisecond: precision == TemporalPrecisionEnum.millisecond
            ? orDefault(millisecond, 0)
            : null,
        isUtc: isUtc,
      );
    }
    throw UnsupportedError('Unknown CqlDateTimeBase subclass.');
  }
}

/// Converts a decimal-hours timezone offset to an ISO 8601 string like
/// `+05:30` / `-05:30`.
extension TimeZoneOffsetDouble on double {
  /// Returns the offset formatted as `±HH:MM`.
  String get timeZoneOffsetToString {
    final offsetHours = toInt();
    final offsetMinutes = this % 1 * 60;
    final h = offsetHours.abs().toString().padLeft(2, '0');
    final m = offsetMinutes.abs().toInt().toString().padLeft(2, '0');
    return '${this < 0 ? '-' : '+'}$h:$m';
  }
}

/// Parses an ISO 8601 timezone string (`±HH:MM` or `Z`) into decimal hours.
extension TimeZoneOffsetString on String {
  /// Returns offset in decimal hours, or `null` on parse failure.
  double? get stringToTimeZoneOffset {
    final positive = !startsWith('-');
    final parts = substring(1).split(':');
    if (parts.length != 2) return null;
    final hours = int.tryParse(parts[0]) ?? 0;
    final minutes = int.tryParse(parts[1]) ?? 0;
    final total = hours + minutes / 60.0;
    return positive ? total : -total;
  }
}

/// Calendar field precisions for CQL temporal arithmetic and comparison.
enum TemporalPrecisionEnum {
  year(CalendarField.year),
  month(CalendarField.month),
  day(CalendarField.day),
  hour(CalendarField.hour),
  minute(CalendarField.minute),
  second(CalendarField.second),
  millisecond(CalendarField.millisecond);

  const TemporalPrecisionEnum(this.calendarConstant);

  /// Matching [CalendarField] index for legacy comparisons.
  final CalendarField calendarConstant;

  /// Adds [amount] of this unit to [input], using calendar-aware semantics
  /// (year and month don't decompose into fixed durations).
  DateTime add(DateTime input, int amount) {
    switch (this) {
      case TemporalPrecisionEnum.year:
        return DateTime(
          input.year + amount,
          input.month,
          input.day,
          input.hour,
          input.minute,
          input.second,
          input.millisecond,
        );
      case TemporalPrecisionEnum.month:
        return DateTime(
          input.year,
          input.month + amount,
          input.day,
          input.hour,
          input.minute,
          input.second,
          input.millisecond,
        );
      case TemporalPrecisionEnum.day:
        return DateTime(
          input.year,
          input.month,
          input.day + amount,
          input.hour,
          input.minute,
          input.second,
          input.millisecond,
        );
      case TemporalPrecisionEnum.hour:
        return input.add(Duration(hours: amount));
      case TemporalPrecisionEnum.minute:
        return input.add(Duration(minutes: amount));
      case TemporalPrecisionEnum.second:
        return input.add(Duration(seconds: amount));
      case TemporalPrecisionEnum.millisecond:
        return input.add(Duration(milliseconds: amount));
    }
  }

  /// Returns the corresponding numeric calendar constant.
  int getCalendarConstant() => calendarConstant.value;

  /// String length of the canonical ISO 8601 representation at this precision
  /// (e.g. `year` → 4 (`YYYY`), `day` → 10 (`YYYY-MM-DD`)).
  int stringLength() {
    switch (this) {
      case TemporalPrecisionEnum.year:
        return 4;
      case TemporalPrecisionEnum.month:
        return 7;
      case TemporalPrecisionEnum.day:
        return 10;
      case TemporalPrecisionEnum.hour:
        return 13;
      case TemporalPrecisionEnum.minute:
        return 16;
      case TemporalPrecisionEnum.second:
        return 19;
      case TemporalPrecisionEnum.millisecond:
        return 23;
    }
  }
}

/// Numeric indices for calendar fields, matching Java's `Calendar.YEAR` etc.
enum CalendarField {
  year(0),
  month(1),
  day(2),
  hour(3),
  minute(4),
  second(5),
  millisecond(6);

  const CalendarField(this.value);
  final int value;
}
