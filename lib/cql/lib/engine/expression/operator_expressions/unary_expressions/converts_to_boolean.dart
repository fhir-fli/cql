import '../../../../cql.dart';

/// Operator to check if the value of its argument can be converted to a Boolean value.
/// The operator accepts various string representations of true and false.
/// If the input cannot be interpreted as a valid Boolean value, the result is false.
/// If the argument is null, the result is null.
class ConvertsToBoolean extends UnaryExpression {
  ConvertsToBoolean({required super.operand});

  factory ConvertsToBoolean.fromJson(Map<String, dynamic> json) =>
      ConvertsToBoolean(operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
