import '../../../../cql.dart';

/// Operator to raise the first argument to the power given by the second argument.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Power extends BinaryExpression {
  Power({required super.operand});

  factory Power.fromJson(Map<String, dynamic> json) => Power(
        operand: (json['operand'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.map((e) => e.toJson()).toList(),
      };
}
