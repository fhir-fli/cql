import '../../../../cql.dart';

/// Operator to return the integer component of its argument.
/// If the argument is null, the result is null.
class Truncate extends UnaryExpression {
  Truncate({required super.operand});
}
