import '../../../cql.dart';

/// Operator to return the string within stringToSub, starting at the 0-based index startIndex, and consisting of length characters.
/// If length is omitted, the substring returned starts at startIndex and continues to the end of stringToSub.
/// If stringToSub or startIndex is null, or startIndex is out of range, the result is null.
class Substring extends OperatorExpression {
  final Expression stringToSub;
  final Expression startIndex;
  final Expression? length;

  Substring(this.stringToSub, this.startIndex, [this.length]);

  /// Add any required constructor or methods here.
}
