import '../../../../cql.dart';

/// Operator to construct a DateTime value from the given components.
/// At least one component other than timezoneOffset must be specified,
/// and no component may be specified at a precision below an unspecified precision.
/// For example, hour may be null, but if it is, minute, second, and millisecond must all be null as well.
/// If timezoneOffset is not specified, it is defaulted to the timezone offset of the evaluation request.
class ExpDateTime extends OperatorExpression {
  final Expression year;
  final Expression? month;
  final Expression? day;
  final Expression? hour;
  final Expression? minute;
  final Expression? second;
  final Expression? millisecond;
  final Expression? timezoneOffset;

  ExpDateTime(
    this.year, {
    this.month,
    this.day,
    this.hour,
    this.minute,
    this.second,
    this.millisecond,
    this.timezoneOffset,
  });

  factory ExpDateTime.fromJson(Map<String, dynamic> json) => ExpDateTime(
        json['year'],
        month: json['month'],
        day: json['day'],
        hour: json['hour'],
        minute: json['minute'],
        second: json['second'],
        millisecond: json['millisecond'],
        timezoneOffset: json['timezoneOffset'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'year': year,
        'month': month,
        'day': day,
        'hour': hour,
        'minute': minute,
        'second': second,
        'millisecond': millisecond,
        'timezoneOffset': timezoneOffset,
      };
}
