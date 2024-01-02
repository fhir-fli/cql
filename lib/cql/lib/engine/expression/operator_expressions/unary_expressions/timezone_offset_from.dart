import '../../../../cql.dart';

/// Operator to return the timezone offset of the argument.
/// If the argument is null, the result is null.
class TimezoneOffsetFrom extends UnaryExpression {
  TimezoneOffsetFrom({required super.operand});

  factory TimezoneOffsetFrom.fromJson(Map<String, dynamic> json) =>
      TimezoneOffsetFrom(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  String get type => 'TimezoneOffsetFrom';
}
