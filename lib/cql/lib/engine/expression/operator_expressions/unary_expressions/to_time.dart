import '../../../../cql.dart';

/// Operator to convert the value of its argument to a Time value.
/// For String values, the operator expects the string to be formatted using ISO-8601 time representation: hh:mm:ss.fff.
/// In addition, the string must be interpretable as a valid time-of-day value.
/// If the input string is not formatted correctly or does not represent a valid time-of-day value, the result is null.
/// As with time-of-day literals, time-of-day values may be specified to any precision.
/// For DateTime values, the result is the same as extracting the Time component from the DateTime value.
/// If the argument is null, the result is null.
class ToTime extends UnaryExpression {
  ToTime({required super.operand});
}
