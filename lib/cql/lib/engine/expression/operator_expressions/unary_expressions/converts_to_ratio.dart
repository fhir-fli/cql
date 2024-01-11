import '../../../../cql.dart';

/// Operator to check if the value of its argument can be converted to a Ratio value.
/// The operator accepts strings using the following format: <quantity>:<quantity>,
/// where it's a quantity, followed by a colon (:), followed by another quantity.
/// The operator accepts quantity strings using the same format as the ToQuantity operator.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Ratio value, the result is false.
/// If the argument is null, the result is null.
class ConvertsToRatio extends UnaryExpression {
  ConvertsToRatio({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ConvertsToRatio.fromJson(Map<String, dynamic> json) =>
      ConvertsToRatio(operand: Expression.fromJson(json['operand']!));

  @override
  String get type => 'ConvertsToRatio';
}
