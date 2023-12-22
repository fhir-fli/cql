import '../../../../cql.dart';

/// Operator to check if the Quantity can be converted to an equivalent Quantity with the given Unit.
/// Returns true if the conversion is valid according to the UCUM conversion.
/// If either argument is null, the result is null.
class CanConvertQuantity extends BinaryExpression {
  CanConvertQuantity({required super.operand});

  factory CanConvertQuantity.fromJson(Map<String, dynamic> json) =>
      CanConvertQuantity(operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
