import '../../../cql.dart';

/// The Slice operator returns a portion of the elements in a list, beginning at the start index and ending just before the ending index.
/// If the source list is null, the result is null.
/// If the startIndex is null, the slice begins at the first element of the list.
/// If the endIndex is null, the slice continues to the last element of the list.
/// If the startIndex or endIndex is less than 0, or if the endIndex is less than the startIndex, the result is an empty list.
class Slice extends OperatorExpression {
  Slice({
    required Expression source,
    required Expression startIndex,
    required Expression endIndex,
  });
}
