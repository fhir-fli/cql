import '../../../cql.dart';

/// Operator to split a string into a list of strings using a separator.
/// If the stringToSplit argument is null, the result is null.
/// If the stringToSplit argument does not contain any appearances of the separator,
/// the result is a list of strings containing one element that is the value of the stringToSplit argument.
class Split extends OperatorExpression {
  final Expression stringToSplit;
  final Expression? separator;

  Split(this.stringToSplit, [this.separator]);

  /// Add any required constructor or methods here.
}
