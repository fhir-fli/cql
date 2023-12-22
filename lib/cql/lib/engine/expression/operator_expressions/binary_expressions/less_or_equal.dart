import '../../../../cql.dart';

/// Operator to check if the first argument is less than or equal to the second argument.
/// Returns true if the first argument is less than or equal to the second argument.
/// For comparisons involving quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// If either argument is null, the result is null.
/// The LessOrEqual operator is defined for the Integer, Decimal, String, Date, DateTime, Time, and Quantity types.
/// Note that relative ratio comparisons are not directly supported due to healthcare variance.
class LessOrEqual extends BinaryExpression {
  LessOrEqual({required super.operand});

  factory LessOrEqual.fromJson(Map<String, dynamic> json) => LessOrEqual(
        operand: json['operand']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
