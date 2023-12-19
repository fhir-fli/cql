import '../../../../cql.dart';

/// Operator to perform integer division of its arguments.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, or the right argument is 0, the result is null.
/// The TruncatedDivide operator is defined for the Integer and Decimal types.
class TruncatedDivide extends BinaryExpression {
  TruncatedDivide({required super.operands});
}
