import '../../../cql.dart';

/// Operator to return the string within stringToSub, starting at the 0-based index startIndex, and consisting of length characters.
/// If length is omitted, the substring returned starts at startIndex and continues to the end of stringToSub.
/// If stringToSub or startIndex is null, or startIndex is out of range, the result is null.
class Substring extends OperatorExpression {
  final Expression? length;
  final Expression startIndex;
  final Expression stringToSub;

  Substring(this.stringToSub, this.startIndex, [this.length]);

  factory Substring.fromJson(Map<String, dynamic> json) => Substring(
        Expression.fromJson(json['stringToSub']),
        Expression.fromJson(json['startIndex']),
        json['length'] != null ? Expression.fromJson(json['length']) : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'stringToSub': stringToSub.toJson(),
        'startIndex': startIndex.toJson(),
        'length': length?.toJson(),
      };
}
