import '../../../../cql.dart';

/// Operator to perform numeric division of its arguments.
/// Note that the result type of Divide is Decimal, even if its arguments are of type Integer.
/// For division operations involving quantities, the resulting quantity will have the appropriate unit.
/// If either argument is null, the result is null.
/// If the result of the division cannot be represented, or the right argument is 0, the result is null.
/// The Divide operator is defined for the Decimal and Quantity types.
class Divide extends BinaryExpression {
  Divide({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Divide.fromJson(Map<String, dynamic> json) => Divide(
      operand: List<Expression>.from(
          json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'Divide';
}
