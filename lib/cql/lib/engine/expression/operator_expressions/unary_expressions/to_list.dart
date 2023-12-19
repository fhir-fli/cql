import '../../../../cql.dart';

/// Operator to return its argument as a List value.
/// The operator accepts a singleton value of any type and returns a list with the value as the single element.
/// If the argument is null, the operator returns an empty list.
/// The operator is effectively shorthand for "if operand is null then { } else { operand }".
/// The operator is used to implement list promotion efficiently.
class ToList extends UnaryExpression {
  ToList({required super.operand});
}
