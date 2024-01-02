import '../../../../cql.dart';

/// Operator to return the Time of the argument.
/// When extracting the time from a DateTime value, implementations should normalize to the timezone offset of the evaluation request timestamp.
/// If the argument is null, the result is null.
class TimeFrom extends UnaryExpression {
  TimeFrom({required super.operand});

  factory TimeFrom.fromJson(Map<String, dynamic> json) => TimeFrom(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  String get type => 'TimeFrom';
}
