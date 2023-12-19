import '../../../../cql.dart';

/// Operator to return the timezone offset of the argument.
/// If the argument is null, the result is null.
class TimezoneOffsetFrom extends UnaryExpression {
  TimezoneOffsetFrom({required super.operand});
}
