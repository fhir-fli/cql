import '../../../../cql.dart';

/// Operator to perform numeric subtraction of its arguments.
/// When subtracting quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// The Subtract operator is defined for the Integer, Decimal, and Quantity types.
/// In addition, a time-valued Quantity can be subtracted from a Date, DateTime, or Time using this operator.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Subtract extends BinaryExpression {
  Subtract({required super.operand});

  factory Subtract.fromJson(Map<String, dynamic> json) => Subtract(
        operand: (json['operand'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((e) => e.toJson()).toList(),
      };

  @override
  String get type => 'Subtract';
}
