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
        operand: List<Expression>.from(
            json['operand'].map((x) => Expression.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'LessOrEqual';
}
