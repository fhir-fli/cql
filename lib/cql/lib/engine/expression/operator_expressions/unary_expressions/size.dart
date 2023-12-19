import '../../../../cql.dart';

/// Operator to return the size of an interval (End(i) - Start(i) + point-size), where point-size is determined by: Successor(Minimum_T) - Minimum_T.
/// Note: This operator is not defined for intervals of type Date, DateTime, and Time.
/// If the argument is null, the result is null.
class Size extends UnaryExpression {
  Size({required super.operand});
}
