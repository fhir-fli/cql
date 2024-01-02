import '../../../../cql.dart';

/// Operator to convert the value of its argument to a Date value.
/// The operator expects the string to be formatted using the ISO-8601 date representation: YYYY-MM-DD.
/// If the input string is not formatted correctly or does not represent a valid date value, the result is null.
/// If the argument is null, the result is null.
class ToDate extends UnaryExpression {
  ToDate({required super.operand});

  factory ToDate.fromJson(Map<String, dynamic> json) => ToDate(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  String get type => 'ToDate';
}
