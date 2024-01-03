import '../../../../cql.dart';

/// Operator to construct a time value from the given components.
/// At least one component must be specified, and no component may be specified at a precision below an unspecified precision.
/// For example, minute may be null, but if it is, second, and millisecond must all be null as well.
class TimeExpression extends OperatorExpression {
  final Expression hour;
  final Expression? millisecond;
  final Expression? minute;
  final Expression? second;

  TimeExpression({
    required this.hour,
    this.minute,
    this.second,
    this.millisecond,
  });

  factory TimeExpression.fromJson(Map<String, dynamic> json) => TimeExpression(
        hour: Expression.fromJson(json['hour']),
        minute:
            json['minute'] == null ? null : Expression.fromJson(json['minute']),
        second:
            json['second'] == null ? null : Expression.fromJson(json['second']),
        millisecond: json['millisecond'] == null
            ? null
            : Expression.fromJson(json['millisecond']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'hour': hour.toJson(),
        if (minute != null) 'minute': minute!.toJson(),
        if (second != null) 'second': second!.toJson(),
        if (millisecond != null) 'millisecond': millisecond!.toJson(),
      };

  @override
  String get type => 'TimeExpression';
}
