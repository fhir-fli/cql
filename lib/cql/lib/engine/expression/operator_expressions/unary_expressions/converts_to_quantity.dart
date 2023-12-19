import '../../../../cql.dart';

/// Operator to check if the value of its argument can be converted to a Quantity value.
/// The operator may be used with Integer, Decimal, Ratio, or String values.
/// For String values, the operator accepts strings using the following format:
/// (+|-)?#0(.0#)?('<unit>')?, where it's an optional polarity indicator,
/// followed by any number of digits (including none), optionally followed by a decimal point,
/// at least one digit, and any number of additional digits, all optionally followed by a unit designator.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Quantity value, the result is false.
/// For Integer, Decimal, and Ratio values, the operator simply returns true.
/// If the argument is null, the result is null.
class ConvertsToQuantity extends UnaryExpression {
  ConvertsToQuantity({required super.operand});

  factory ConvertsToQuantity.fromJson(Map<String, dynamic> json) =>
      ConvertsToQuantity(operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
