import '../../../../cql.dart';

/// Operator to check if the first argument is less than the second argument.
/// Returns true if the first argument is less than the second argument.
/// For comparisons involving quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// If either argument is null, the result is null.
/// The Less operator is defined for the Integer, Decimal, String, Date, DateTime, Time, and Quantity types.
/// Note that relative ratio comparisons are not directly supported due to healthcare variance.
class Less extends BinaryExpression {
  Less({required super.operand});

  factory Less.fromJson(Map<String, dynamic> json) => Less(
        operand: json['operand']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
