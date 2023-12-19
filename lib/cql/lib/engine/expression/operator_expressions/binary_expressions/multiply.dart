import '../../../../cql.dart';

/// Operator to perform numeric multiplication of its arguments.
/// For multiplication operations involving quantities, the resulting quantity will have the appropriate unit.
/// The Multiply operator is defined for the Integer, Decimal, and Quantity types.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Multiply extends BinaryExpression {
  Multiply({required super.operands});

  factory Multiply.fromJson(Map<String, dynamic> json) => Multiply(
        operands: json['operands']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
