import 'package:json_annotation/json_annotation.dart';

/// Enum to specify the units of precision available for temporal operations.
enum DateTimePrecision {
  @JsonValue('Year')
  year,
  @JsonValue('Month')
  month,
  @JsonValue('Week')
  week,
  @JsonValue('Day')
  day,
  @JsonValue('Hour')
  hour,
  @JsonValue('Minute')
  minute,
  @JsonValue('Second')
  second,
  @JsonValue('Millisecond')
  millisecond,
}

extension DateTimePrecisionExtension on DateTimePrecision {
  static const _jsonValues = {
    DateTimePrecision.year: 'Year',
    DateTimePrecision.month: 'Month',
    DateTimePrecision.week: 'Week',
    DateTimePrecision.day: 'Day',
    DateTimePrecision.hour: 'Hour',
    DateTimePrecision.minute: 'Minute',
    DateTimePrecision.second: 'Second',
    DateTimePrecision.millisecond: 'Millisecond',
  };

  static const _jsonValuesReversed = {
    'year': DateTimePrecision.year,
    'month': DateTimePrecision.month,
    'week': DateTimePrecision.week,
    'day': DateTimePrecision.day,
    'hour': DateTimePrecision.hour,
    'minute': DateTimePrecision.minute,
    'second': DateTimePrecision.second,
    'millisecond': DateTimePrecision.millisecond,
  };

  static DateTimePrecision fromJson(String? json) => json == null
      ? DateTimePrecision.year
      : _jsonValuesReversed[json.toLowerCase()] ?? DateTimePrecision.year;

  String toJson() => _jsonValues[this]!;
}
