import '../../../../cql.dart';

/// Operator to convert the value of its argument to a Ratio value.
/// The operator accepts strings using the format: <quantity>:<quantity>,
/// where it's a quantity, followed by a colon (:), followed by another quantity.
/// The operator accepts quantity strings using the same format as the ToQuantity operator.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Ratio value, the result is null.
/// If the argument is null, the result is null.
class ToRatio extends UnaryExpression {
  ToRatio({required super.operand});
}
