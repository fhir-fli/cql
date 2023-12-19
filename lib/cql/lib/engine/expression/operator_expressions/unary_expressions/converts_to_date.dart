import '../../../../cql.dart';

/// Operator to check if the value of its argument can be converted to a Date value.
/// The operator expects the string to be formatted using the ISO-8601 date representation: YYYY-MM-DD.
/// If the input string is not formatted correctly or does not represent a valid date value, the result is false.
/// If the argument is null, the result is null.
class ConvertsToDate extends UnaryExpression {
  ConvertsToDate({required super.operand});

  factory ConvertsToDate.fromJson(Map<String, dynamic> json) =>
      ConvertsToDate(operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
