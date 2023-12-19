import '../../../../cql.dart';

/// Implies operator returning the logical implication of its arguments.
class Implies extends BinaryExpression {
  Implies({required super.operands});

  factory Implies.fromJson(Map<String, dynamic> json) => Implies(
        operands: json['operands']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
