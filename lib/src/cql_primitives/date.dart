part of 'cql_primitives.dart';

/// Convert a Dart [DateTime] to a [CqlDate] (year/month/day only).
extension CqlDateExtension on DateTime {
  /// Returns a new [CqlDate] from this DateTime.
  CqlDate get toCqlDate => CqlDate.fromDateTime(this);
}

/// Convert an ISO-8601 [String] to a [CqlDate].
extension CqlDateStringExtension on String {
  /// Returns a new [CqlDate] from this string.
  CqlDate get toCqlDate => CqlDate.fromString(this);
}

/// CQL System type **Date** ([CQL spec §3.4.7](https://cql.hl7.org/03-developersguide.html#date-datetime-and-time)).
///
/// Partial-precision date with only year/month/day. No time portion,
/// no timezone (timezone is preserved on the wire but not part of the
/// CQL semantics for `Date`).
class CqlDate extends CqlDateTimeBase {
  const CqlDate._({
    required super.valueString,
    required super.year,
    required super.month,
    required super.day,
    required super.isUtc,
    super.timeZoneOffset,
  }) : super._();

  /// Constructs from the base fields parsed by
  /// [CqlDateTimeBase.formatDateTimeString].
  factory CqlDate.fromBase({
    required String? valueString,
    required int? year,
    required int? month,
    required int? day,
    required bool isUtc,
    num? timeZoneOffset,
  }) =>
      CqlDate._(
        valueString: valueString,
        year: year,
        month: month,
        day: day,
        isUtc: isUtc,
        timeZoneOffset: timeZoneOffset,
      );

  /// Constructs from individual components.
  factory CqlDate.fromUnits({
    required int year,
    int? month,
    int? day,
    bool? isUtc,
  }) =>
      CqlDateTimeBase.fromUnits<CqlDate>(
        year: year,
        month: month,
        day: day,
        isUtc: isUtc ?? false,
      ) as CqlDate;

  /// Parses an ISO 8601 date string (`YYYY`, `YYYY-MM`, or `YYYY-MM-DD`).
  factory CqlDate.fromString(String input) =>
      CqlDateTimeBase.constructor<CqlDate>(input: input) as CqlDate;

  /// Converts a Dart [DateTime] (uses only year/month/day).
  factory CqlDate.fromDateTime(DateTime input) =>
      CqlDateTimeBase.constructor<CqlDate>(input: input) as CqlDate;

  /// Constructs from a JSON map of shape `{'value': '<iso-date>'}`.
  factory CqlDate.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    if (value is String) return CqlDate.fromString(value);
    if (value is DateTime) return CqlDate.fromDateTime(value);
    if (value == null) {
      return CqlDateTimeBase.constructor<CqlDate>() as CqlDate;
    }
    throw const FormatException(
      'Invalid input for CqlDate: must be a String or DateTime',
    );
  }

  /// Constructs from YAML input.
  static CqlDate fromYaml(dynamic yaml) {
    if (yaml is String) {
      return CqlDate.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return CqlDate.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    }
    throw ArgumentError(
      'CqlDate cannot be constructed from provided YAML input.',
    );
  }

  /// Attempts to parse [value] as a [CqlDate]. Returns `null` on failure.
  static CqlDate? tryParse(dynamic value) {
    try {
      if (value is DateTime) return CqlDate.fromDateTime(value);
      if (value is String) return CqlDate.fromString(value);
    } catch (_) {
      return null;
    }
    return null;
  }

  @override
  String get cqlTypeName => 'Date';

  // ===========================================================================
  // Arithmetic — operators return CqlDate (not the abstract base).
  // ===========================================================================

  /// Returns `this + duration`.
  CqlDate plus(ExtendedDuration other) =>
      CqlDateTimeBase.plus<CqlDate>(this, other) as CqlDate;

  /// Returns `this - duration`.
  CqlDate minus(ExtendedDuration other) =>
      CqlDateTimeBase.minus<CqlDate>(this, other) as CqlDate;

  @override
  CqlDate operator +(ExtendedDuration other) =>
      CqlDateTimeBase.plus<CqlDate>(this, other) as CqlDate;

  @override
  CqlDate operator -(ExtendedDuration other) =>
      CqlDateTimeBase.minus<CqlDate>(this, other) as CqlDate;

  /// Alias for [minus].
  CqlDate subtract(ExtendedDuration other) =>
      CqlDateTimeBase.minus<CqlDate>(this, other) as CqlDate;

  @override
  Map<String, dynamic> toJson() =>
      (valueString?.isNotEmpty ?? false) ? {'value': valueString} : const {};
}
