import '../../../../cql.dart';

/// Operator to check if the Quantity can be converted to an equivalent Quantity with the given Unit.
/// Returns true if the conversion is valid according to the UCUM conversion.
/// If either argument is null, the result is null.
class CanConvertQuantity extends BinaryExpression {
  CanConvertQuantity({required super.operand});

  factory CanConvertQuantity.fromJson(Map<String, dynamic> json) =>
      CanConvertQuantity(
          operand: List<Expression>.from(
              json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'CanConvertQuantity';
}
