import '../../cql.dart';

/// If operator evaluating a condition and returning the appropriate argument.
class If extends Expression {
  /// Condition expression.
  Expression condition;

  /// Else expression.
  Expression elseExpr;

  /// Then expression.
  Expression then;

  If({
    required this.condition,
    required this.then,
    required this.elseExpr,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory If.fromJson(Map<String, dynamic> json) => If(
        condition: Expression.fromJson(json['condition']!),
        then: Expression.fromJson(json['then']!),
        elseExpr: Expression.fromJson(json['else']!),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'condition': condition.toJson(),
        'then': then.toJson(),
        'else': elseExpr.toJson(),
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'If';
}
