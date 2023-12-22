import '../../../../cql.dart';

/// Operator to perform integer division of its arguments.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, or the right argument is 0, the result is null.
/// The TruncatedDivide operator is defined for the Integer and Decimal types.
class TruncatedDivide extends BinaryExpression {
  TruncatedDivide({required super.operand});

  factory TruncatedDivide.fromJson(Map<String, dynamic> json) =>
      TruncatedDivide(
        operand: (json['operand'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.map((e) => e.toJson()).toList(),
      };
}
