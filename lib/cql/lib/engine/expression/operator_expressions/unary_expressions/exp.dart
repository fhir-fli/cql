import '../../../../cql.dart';

/// Operator to return e raised to the given power.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Exp extends UnaryExpression {
  Exp({required super.operand});

  factory Exp.fromJson(Map<String, dynamic> json) =>
      Exp(operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
