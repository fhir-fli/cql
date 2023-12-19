import '../../../../cql.dart';

/// Operator to raise the first argument to the power given by the second argument.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Power extends BinaryExpression {
  Power({required super.operands});
}
