import '../../../cql.dart';

/// The ByExpression element specifies that the sort should be performed using the given expression and direction.
/// This approach is used to specify the sort order as a calculated expression.
class ByExpression extends SortByItem {
  final Expression expression;

  ByExpression({
    required super.direction,
    required this.expression,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ByExpression.fromJson(Map<String, dynamic> json) => ByExpression(
        direction: SortDirectionExtension.fromJson(json['direction']),
        expression: Expression.fromJson(json['expression']),
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
        'direction': direction.toJson(),
        'type': type,
        'expression': expression.toJson(),
      };

  @override
  String get type => 'ByExpression';
}
