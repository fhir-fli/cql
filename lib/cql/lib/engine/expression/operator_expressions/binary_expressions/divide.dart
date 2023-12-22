import '../../../../cql.dart';

/// Operator to perform numeric division of its arguments.
/// Note that the result type of Divide is Decimal, even if its arguments are of type Integer.
/// For division operations involving quantities, the resulting quantity will have the appropriate unit.
/// If either argument is null, the result is null.
/// If the result of the division cannot be represented, or the right argument is 0, the result is null.
/// The Divide operator is defined for the Decimal and Quantity types.
class Divide extends BinaryExpression {
  Divide({required super.operand});

  factory Divide.fromJson(Map<String, dynamic> json) =>
      Divide(operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
