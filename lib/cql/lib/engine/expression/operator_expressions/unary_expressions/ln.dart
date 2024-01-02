import '../../../../cql.dart';

/// Operator to compute the natural logarithm of its argument.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Ln extends UnaryExpression {
  Ln({required super.operand});

  factory Ln.fromJson(Map<String, dynamic> json) => Ln(
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  String get type => 'Ln';
}
