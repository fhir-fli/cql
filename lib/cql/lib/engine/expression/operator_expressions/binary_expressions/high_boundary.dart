import '../../../../cql.dart';

/// Operator to return the greatest possible value of the input to the specified precision.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the input value is null, the result is null.
class HighBoundary extends BinaryExpression {
  HighBoundary({required super.operand});

  factory HighBoundary.fromJson(Map<String, dynamic> json) => HighBoundary(
        operand: json['operand']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
