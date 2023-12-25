import '../../../../cql.dart';

/// Operator to perform numeric addition of its arguments.
/// When adding quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// The Add operator is defined for the Integer, Decimal, and Quantity types.
/// In addition, a time-valued Quantity can be added to a Date, DateTime, or Time using this operator.
/// If either argument is null, the result is null.
/// If the result of the addition cannot be represented (i.e., arithmetic overflow), the result is null.
class Add extends BinaryExpression {
  Add({required super.operand});

  factory Add.fromJson(Map<String, dynamic> json) => Add(
      operand: List<Expression>.from(
          json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand,
      };

  String get type => 'Add';
}
