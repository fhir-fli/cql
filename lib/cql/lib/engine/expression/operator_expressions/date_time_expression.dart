import '../../../../cql.dart';

/// Operator to construct a DateTime value from the given components.
/// At least one component other than timezoneOffset must be specified,
/// and no component may be specified at a precision below an unspecified precision.
/// For example, hour may be null, but if it is, minute, second, and millisecond must all be null as well.
/// If timezoneOffset is not specified, it is defaulted to the timezone offset of the evaluation request.
class DateTimeExpression extends OperatorExpression {
  final Expression? day;
  final Expression? hour;
  final Expression? millisecond;
  final Expression? minute;
  final Expression? month;
  final Expression? second;
  final Expression? timezoneOffset;
  final Expression year;

  DateTimeExpression({
    required this.year,
    this.month,
    this.day,
    this.hour,
    this.minute,
    this.second,
    this.millisecond,
    this.timezoneOffset,
  });

  factory DateTimeExpression.fromJson(Map<String, dynamic> json) =>
      DateTimeExpression(
        year: Expression.fromJson(json['year']),
        month:
            json['month'] == null ? null : Expression.fromJson(json['month']),
        day: json['day'] == null ? null : Expression.fromJson(json['day']),
        hour: json['hour'] == null ? null : Expression.fromJson(json['hour']),
        minute:
            json['minute'] == null ? null : Expression.fromJson(json['minute']),
        second:
            json['second'] == null ? null : Expression.fromJson(json['second']),
        millisecond: json['millisecond'] == null
            ? null
            : Expression.fromJson(json['millisecond']),
        timezoneOffset: json['timezoneOffset'] == null
            ? null
            : Expression.fromJson(json['timezoneOffset']),
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
