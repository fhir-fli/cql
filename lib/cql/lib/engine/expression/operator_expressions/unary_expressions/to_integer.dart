import '../../../../cql.dart';

/// Operator to convert the value of its argument to an Integer value.
/// The operator accepts strings using the format: (+|-)?#0, meaning an optional polarity indicator,
/// followed by any number of digits (including none), followed by at least one digit.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Integer value, the result is null.
/// If the argument is null, the result is null.
class ToInteger extends UnaryExpression {
  ToInteger({required super.operand});

  factory ToInteger.fromJson(Map<String, dynamic> json) => ToInteger(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
