import '../../../../cql.dart';

/// Operator to compute the remainder of the division of its arguments.
/// The Modulo operator is defined for the Integer and Decimal types.
/// If either argument is null, the result is null.
/// If the result of the modulo cannot be represented, or the right argument is 0, the result is null.
class Modulo extends BinaryExpression {
  Modulo({required super.operand});

  factory Modulo.fromJson(Map<String, dynamic> json) => Modulo(
        operand: List<Expression>.from(
            json['operand'].map((x) => Expression.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'Modulo';
}
