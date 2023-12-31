import '../../../../cql.dart';

/// Operator to check if the value of its argument can be converted to a String value.
/// The operator returns true if the argument is any of the following types: Boolean, Integer, Decimal, DateTime, Date, Time, Quantity, Ratio.
/// If the argument is null, the result is null.
class ConvertsToString extends UnaryExpression {
  ConvertsToString({required super.operand});

  factory ConvertsToString.fromJson(Map<String, dynamic> json) =>
      ConvertsToString(operand: Expression.fromJson(json['operand']!));

  @override
  String get type => 'ConvertsToString';
}
