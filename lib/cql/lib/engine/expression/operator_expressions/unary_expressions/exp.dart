import '../../../../cql.dart';

/// Operator to return e raised to the given power.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Exp extends UnaryExpression {
  Exp({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Exp.fromJson(Map<String, dynamic> json) =>
      Exp(operand: Expression.fromJson(json['operand']!));

  @override
  String get type => 'Exp';
}
