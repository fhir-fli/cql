import '../../../../cql.dart';

/// Implies operator returning the logical implication of its arguments.
class Implies extends BinaryExpression {
  Implies({required super.operand});

  factory Implies.fromJson(Map<String, dynamic> json) => Implies(
        operand: json['operand']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
