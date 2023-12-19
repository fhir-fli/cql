import '../../../cql.dart';

/// Operator to split a string into a list of strings using matches of a regex pattern.
/// If the stringToSplit argument is null, the result is null.
/// If the stringToSplit argument does not contain any appearances of the separator pattern,
/// the result is a list of strings containing one element that is the input value of the stringToSplit argument.
class SplitOnMatches extends OperatorExpression {
  final Expression stringToSplit;
  final Expression separatorPattern;

  SplitOnMatches(this.stringToSplit, this.separatorPattern);

  /// Add any required constructor or methods here.
}
