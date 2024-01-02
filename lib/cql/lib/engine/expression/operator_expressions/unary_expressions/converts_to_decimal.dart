import '../../../../cql.dart';

/// Operator to check if the value of its argument can be converted to a Decimal value.
/// The operator accepts strings using the following format: (+|-)?#0(.0#)?
/// If the input string is not formatted correctly or cannot be interpreted as a valid Decimal value, the result is false.
/// If the argument is null, the result is null.
class ConvertsToDecimal extends UnaryExpression {
  ConvertsToDecimal({required super.operand});

  factory ConvertsToDecimal.fromJson(Map<String, dynamic> json) =>
      ConvertsToDecimal(operand: Expression.fromJson(json['operand']!));

  @override
  String get type => 'ConvertsToDecimal';
}
