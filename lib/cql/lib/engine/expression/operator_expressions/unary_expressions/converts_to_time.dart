import '../../../../cql.dart';

/// Operator to check if the value of its argument can be converted to a Time value.
/// For String values, the operator expects the string to be formatted using ISO-8601 time representation: hh:mm:ss.fff.
/// If the input string is not formatted correctly or does not represent a valid time-of-day value, the result is false.
/// As with time-of-day literals, time-of-day values may be specified to any precision.
/// If the argument is null, the result is null.
class ConvertsToTime extends UnaryExpression {
  ConvertsToTime({required super.operand});

  factory ConvertsToTime.fromJson(Map<String, dynamic> json) =>
      ConvertsToTime(operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
