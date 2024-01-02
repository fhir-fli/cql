import '../../../../cql.dart';

/// Operator to convert a Quantity to an equivalent Quantity with the given unit.
/// If the unit of the input quantity can be converted to the target unit,
/// the result is an equivalent Quantity with the target unit.
/// Otherwise, the result is null.
/// If either argument is null, the result is null.
class ConvertQuantity extends BinaryExpression {
  ConvertQuantity({required super.operand});

  factory ConvertQuantity.fromJson(Map<String, dynamic> json) =>
      ConvertQuantity(
          operand: List<Expression>.from(
              json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'ConvertQuantity';
}
