import '../../../../cql.dart';

/// Operator to convert the value of its argument to a Decimal value.
/// The operator accepts strings using the following format: (+|-)?#0(.0#)?
/// If the input string is not formatted correctly or cannot be interpreted as a valid Decimal value, the result is null.
/// If the argument is null, the result is null.
class ToDecimal extends UnaryExpression {
  ToDecimal({required super.operand});
}
