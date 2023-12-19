import '../../../../cql.dart';

/// Operator to check if the first argument is greater than or equal to the second argument.
/// Returns true if the first argument is greater than or equal to the second argument.
/// For comparisons involving quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// If either argument is null, the result is null.
/// The GreaterOrEqual operator is defined for the Integer, Decimal, String, Date, DateTime, Time, and Quantity types.
/// Note that relative ratio comparisons are not directly supported due to healthcare variance.
class GreaterOrEqual extends BinaryExpression {
  GreaterOrEqual({required super.operands});

  factory GreaterOrEqual.fromJson(Map<String, dynamic> json) => GreaterOrEqual(
        operands: json['operands']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
