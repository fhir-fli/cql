import '../../../../cql.dart';

/// Operator to check if the Quantity can be converted to an equivalent Quantity with the given Unit.
/// Returns true if the conversion is valid according to the UCUM conversion.
/// If either argument is null, the result is null.
class CanConvertQuantity extends BinaryExpression {
  CanConvertQuantity({required super.operands});

  factory CanConvertQuantity.fromJson(Map<String, dynamic> json) =>
      CanConvertQuantity(operands: json['operands']!);

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
