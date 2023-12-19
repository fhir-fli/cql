import '../../../cql.dart';

/// Operator to return the 0-based index of the beginning of the given pattern in the given string.
/// If the pattern is not found, the result is -1.
/// If either argument is null, the result is null.
class PositionOf extends OperatorExpression {
  final Expression pattern;
  final Expression string;

  PositionOf(this.pattern, this.string);

  /// Add any required constructor or methods here.
}
