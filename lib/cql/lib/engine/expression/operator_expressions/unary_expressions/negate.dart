import '../../../../cql.dart';

/// Operator to return the negative of its argument.
/// When negating quantities, the unit is unchanged.
/// If the argument is null or the result of negating the argument cannot be represented, the result is null.
/// The Negate operator is defined for the Integer, Decimal, and Quantity types.
class Negate extends UnaryExpression {
  Negate({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Negate.fromJson(Map<String, dynamic> json) => Negate(
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  String get type => 'Negate';
}
