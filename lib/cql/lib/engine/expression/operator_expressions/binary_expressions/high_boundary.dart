import '../../../../cql.dart';

/// Operator to return the greatest possible value of the input to the specified precision.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the input value is null, the result is null.
class HighBoundary extends BinaryExpression {
  HighBoundary({required super.operands});

  factory HighBoundary.fromJson(Map<String, dynamic> json) => HighBoundary(
        operands: json['operands']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}