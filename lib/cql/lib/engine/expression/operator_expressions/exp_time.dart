import '../../../../cql.dart';

/// Operator to construct a time value from the given components.
/// At least one component must be specified, and no component may be specified at a precision below an unspecified precision.
/// For example, minute may be null, but if it is, second, and millisecond must all be null as well.
class ExpTime extends OperatorExpression {
  final Expression hour;
  final Expression? minute;
  final Expression? second;
  final Expression? millisecond;

  ExpTime(
    this.hour, {
    this.minute,
    this.second,
    this.millisecond,
  });

  factory ExpTime.fromJson(Map<String, dynamic> json) => ExpTime(
        json['hour'],
        minute: json['minute'],
        second: json['second'],
        millisecond: json['millisecond'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'hour': hour,
        'minute': minute,
        'second': second,
        'millisecond': millisecond,
      };
}
