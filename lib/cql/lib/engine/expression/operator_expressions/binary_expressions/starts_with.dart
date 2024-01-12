import '../../../../cql.dart';

/// Operator to return true if the given string starts with the given prefix.
/// If the prefix is the empty string, the result is true.
/// If either argument is null, the result is null.
class StartsWith extends BinaryExpression {
  StartsWith({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory StartsWith.fromJson(Map<String, dynamic> json) => StartsWith(
        operand: List<Expression>.from(
          json['operand'].map(
            (x) => Expression.fromJson(x),
          ),
        ),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((e) => e.toJson()).toList(),
      };

  @override
  String get type => 'StartsWith';
}
