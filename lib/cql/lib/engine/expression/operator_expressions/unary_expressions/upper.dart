import '../../../../cql.dart';

/// Operator to convert the given string with all characters converted to their upper case equivalents.
/// If the argument is null, the result is null.
class Upper extends UnaryExpression {
  Upper({required super.operand});
}
