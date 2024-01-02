import '../../../cql.dart';

/// Operator to return the time-of-day of the start timestamp associated with the evaluation request.
class TimeOfDay extends OperatorExpression {
  TimeOfDay();

  factory TimeOfDay.fromJson(Map<String, dynamic> json) => TimeOfDay();

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
      };

  @override
  String get type => 'TimeOfDay';
}
