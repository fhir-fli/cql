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

extension DateTimePrecisionJson on DateTimePrecision {
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
    'Year': DateTimePrecision.year,
    'Month': DateTimePrecision.month,
    'Week': DateTimePrecision.week,
    'Day': DateTimePrecision.day,
    'Hour': DateTimePrecision.hour,
    'Minute': DateTimePrecision.minute,
    'Second': DateTimePrecision.second,
    'Millisecond': DateTimePrecision.millisecond,
  };

  static DateTimePrecision fromJson(String? json) =>
      _jsonValuesReversed[json] ?? DateTimePrecision.year;

  String toJson() => _jsonValues[this]!;
}
