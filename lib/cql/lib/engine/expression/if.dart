import '../../cql.dart';

/// If operator evaluating a condition and returning the appropriate argument.
class If extends Expression {
  /// Condition expression.
  Expression condition;

  /// Else expression.
  Expression elseExpr;

  /// Then expression.
  Expression then;

  If({required this.condition, required this.then, required this.elseExpr});

  factory If.fromJson(Map<String, dynamic> json) => If(
        condition: json['condition']!,
        then: json['then']!,
        elseExpr: json['else']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'condition': condition.toJson(),
        'then': then.toJson(),
        'else': elseExpr.toJson(),
      };
}
