import '../../../../cql.dart';

/// Operator to return the least possible value of the input to the specified precision.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the input value is null, the result is null.
class LowBoundary extends BinaryExpression {
  LowBoundary({required super.operands});

  factory LowBoundary.fromJson(Map<String, dynamic> json) => LowBoundary(
        operands: json['operands']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
