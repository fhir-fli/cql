import '../../../../cql.dart';

/// Implies operator returning the logical implication of its arguments.
class Implies extends BinaryExpression {
  Implies({required super.operand});

  factory Implies.fromJson(Map<String, dynamic> json) => Implies(
        operand: List<Expression>.from(
            json['operand'].map((x) => Expression.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
