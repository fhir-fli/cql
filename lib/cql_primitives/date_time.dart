part of 'cql_primitives.dart';

/// Convert a Dart [DateTime] to a [CqlDateTime].
extension CqlDateTimeExtension on DateTime {
  /// Returns a new [CqlDateTime] from this DateTime.
  CqlDateTime get toCqlDateTime => CqlDateTime.fromDateTime(this);
}

/// Convert an ISO-8601 [String] to a [CqlDateTime].
extension CqlDateTimeStringExtension on String {
  /// Returns a new [CqlDateTime] from this string.
  CqlDateTime get toCqlDateTime => CqlDateTime.fromString(this);
}

/// CQL System type **DateTime** ([CQL spec §3.4.7](https://cql.hl7.org/03-developersguide.html#date-datetime-and-time)).
///
/// Partial-precision date+time with optional timezone offset. Year is the
/// minimum precision; all lower components are optional and absent means
/// "unknown" (preserved through comparison via three-valued logic).
///
/// CQL has no `Instant` type — the FHIR `instant` primitive (a fully-precise
/// DateTime with timezone) maps to this type via the [ModelResolver].
class CqlDateTime extends CqlDateTimeBase {
  const CqlDateTime._({
    required super.valueString,
    required super.year,
    required super.month,
    required super.day,
    required super.hour,
    required super.minute,
    required super.second,
    required super.millisecond,
    required super.microsecond,
    required super.timeZoneOffset,
    required super.isUtc,
  }) : super._();

  /// Constructs from base fields. Used by [CqlDateTimeBase] internal dispatch.
  factory CqlDateTime.fromBase({
    required String? valueString,
    required int? year,
    required int? month,
    required int? day,
    required int? hour,
    required int? minute,
    required int? second,
    required int? millisecond,
    required String? microsecond,
    required num? timeZoneOffset,
    required bool isUtc,
  }) =>
      CqlDateTime._(
        valueString: valueString,
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond,
        microsecond: microsecond,
        timeZoneOffset: timeZoneOffset,
        isUtc: isUtc,
      );

  /// Constructs from individual components.
  factory CqlDateTime.fromUnits({
    required int year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
    num? timeZoneOffset,
    bool? isUtc,
  }) =>
      CqlDateTimeBase.fromUnits<CqlDateTime>(
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond,
        microsecond: microsecond,
        timeZoneOffset: timeZoneOffset,
        isUtc: isUtc ?? false,
      ) as CqlDateTime;

  /// Parses an ISO 8601 date-time string.
  factory CqlDateTime.fromString(String input) =>
      CqlDateTimeBase.constructor<CqlDateTime>(input: input) as CqlDateTime;

  /// Constructs from a Dart [DateTime].
  factory CqlDateTime.fromDateTime(DateTime input) =>
      CqlDateTimeBase.constructor<CqlDateTime>(input: input) as CqlDateTime;

  /// Constructs from a JSON map of shape `{'value': '<iso-datetime>'}`.
  factory CqlDateTime.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    if (value is String) return CqlDateTime.fromString(value);
    if (value is DateTime) return CqlDateTime.fromDateTime(value);
    if (value == null) {
      return CqlDateTimeBase.constructor<CqlDateTime>() as CqlDateTime;
    }
    throw const FormatException(
      'Invalid CqlDateTime JSON: must be a String or DateTime',
    );
  }

  /// Constructs from YAML input.
  static CqlDateTime fromYaml(dynamic yaml) {
    if (yaml is String) {
      return CqlDateTime.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return CqlDateTime.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    }
    throw ArgumentError(
      'CqlDateTime cannot be constructed from provided YAML input.',
    );
  }

  /// Attempts to parse [value]. Returns `null` on failure.
  static CqlDateTime? tryParse(dynamic value) {
    try {
      if (value is DateTime) return CqlDateTime.fromDateTime(value);
      if (value is String) return CqlDateTime.fromString(value);
    } catch (_) {
      return null;
    }
    return null;
  }

  @override
  String get cqlTypeName => 'DateTime';

  // ===========================================================================
  // Arithmetic — operators return CqlDateTime (not the abstract base).
  // ===========================================================================

  CqlDateTime plus(ExtendedDuration other) =>
      CqlDateTimeBase.plus<CqlDateTime>(this, other) as CqlDateTime;

  CqlDateTime minus(ExtendedDuration other) =>
      CqlDateTimeBase.minus<CqlDateTime>(this, other) as CqlDateTime;

  @override
  CqlDateTime operator +(ExtendedDuration other) =>
      CqlDateTimeBase.plus<CqlDateTime>(this, other) as CqlDateTime;

  @override
  CqlDateTime operator -(ExtendedDuration other) =>
      CqlDateTimeBase.minus<CqlDateTime>(this, other) as CqlDateTime;

  CqlDateTime subtract(ExtendedDuration other) =>
      CqlDateTimeBase.minus<CqlDateTime>(this, other) as CqlDateTime;

  @override
  Map<String, dynamic> toJson() => (valueString?.isNotEmpty ?? false)
      ? {'value': valueString}
      : const {};
}
