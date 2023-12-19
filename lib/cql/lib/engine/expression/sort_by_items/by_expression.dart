import '../../../cql.dart';

/// The ByExpression element specifies that the sort should be performed using the given expression and direction.
/// This approach is used to specify the sort order as a calculated expression.
class ByExpression extends SortByItem {
  final Expression expression;

  ByExpression({
    required super.direction,
    required this.expression,
  });

  factory ByExpression.fromJson(Map<String, dynamic> json) => ByExpression(
        direction: SortDirectionExtension.fromJson(json['direction']),
        expression: Expression.fromJson(json['expression']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'direction': direction.toJson(),
        'expression': expression.toJson(),
      };
}
