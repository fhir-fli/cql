import '../../../../cql.dart';

/// Operator to return the least possible value of the input to the specified precision.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the input value is null, the result is null.
class LowBoundary extends BinaryExpression {
  LowBoundary({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory LowBoundary.fromJson(Map<String, dynamic> json) => LowBoundary(
        operand: List<Expression>.from(
            json['operand'].map((x) => Expression.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'LowBoundary';
}
