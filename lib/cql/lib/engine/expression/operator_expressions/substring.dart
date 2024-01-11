import '../../../cql.dart';

/// Operator to return the string within stringToSub, starting at the 0-based index startIndex, and consisting of length characters.
/// If length is omitted, the substring returned starts at startIndex and continues to the end of stringToSub.
/// If stringToSub or startIndex is null, or startIndex is out of range, the result is null.
class Substring extends OperatorExpression {
  final Expression? length;
  final Expression startIndex;
  final Expression stringToSub;

  Substring({
    required this.stringToSub,
    required this.startIndex,
    this.length,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Substring.fromJson(Map<String, dynamic> json) => Substring(
        stringToSub: Expression.fromJson(json['stringToSub']),
        startIndex: Expression.fromJson(json['startIndex']),
        length:
            json['length'] != null ? Expression.fromJson(json['length']) : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'stringToSub': stringToSub.toJson(),
        'startIndex': startIndex.toJson(),
        if (length != null) 'length': length!.toJson(),
      };

  @override
  String get type => 'Substring';
}
