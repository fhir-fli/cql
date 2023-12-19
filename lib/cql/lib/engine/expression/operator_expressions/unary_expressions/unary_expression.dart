import '../../../../cql.dart';

/// Abstract base class for expressions that take a single argument.
abstract class UnaryExpression extends OperatorExpression {
  /// Expression as the operand.
  Expression operand;

  UnaryExpression({required this.operand});
}
