import '../../../../cql.dart';

/// Operator to check if the first argument is greater than the second argument.
/// Returns true if the first argument is greater than the second argument.
/// For comparisons involving quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// If either argument is null, the result is null.
/// The Greater operator is defined for the Integer, Decimal, String, Date, DateTime, Time, and Quantity types.
/// Note that relative ratio comparisons are not directly supported due to healthcare variance.
class Greater extends BinaryExpression {
  Greater({required super.operands});

  factory Greater.fromJson(Map<String, dynamic> json) => Greater(
        operands: json['operands']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
