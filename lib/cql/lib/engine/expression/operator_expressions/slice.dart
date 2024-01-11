import '../../../cql.dart';

/// The Slice operator returns a portion of the elements in a list, beginning at the start index and ending just before the ending index.
/// If the source list is null, the result is null.
/// If the startIndex is null, the slice begins at the first element of the list.
/// If the endIndex is null, the slice continues to the last element of the list.
/// If the startIndex or endIndex is less than 0, or if the endIndex is less than the startIndex, the result is an empty list.
class Slice extends OperatorExpression {
  final Expression endIndex;
  final Expression source;
  final Expression startIndex;

  Slice({
    required this.source,
    required this.startIndex,
    required this.endIndex,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Slice.fromJson(Map<String, dynamic> json) => Slice(
        source: Expression.fromJson(json['source']),
        startIndex: Expression.fromJson(json['startIndex']),
        endIndex: Expression.fromJson(json['endIndex']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'source': source.toJson(),
        'startIndex': startIndex.toJson(),
        'endIndex': endIndex.toJson(),
      };

  @override
  String get type => 'Slice';
}
