import '../../../../cql.dart';

/// Operator to check if the value of its argument can be converted to an Integer value.
/// The operator accepts strings using the format: (+|-)?#0, meaning an optional polarity indicator,
/// followed by any number of digits (including none), followed by at least one digit.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Integer value, the result is false.
/// If the argument is null, the result is null.
class ConvertsToInteger extends UnaryExpression {
  ConvertsToInteger({required super.operand});

  factory ConvertsToInteger.fromJson(Map<String, dynamic> json) =>
      ConvertsToInteger(operand: Expression.fromJson(json['operand']!));

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
