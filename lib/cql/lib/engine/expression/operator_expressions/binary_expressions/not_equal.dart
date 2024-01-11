import '../../../../cql.dart';

/// Operator to check if its arguments are not the same value.
/// Returns true if its arguments are not the same value.
/// This operator is a shorthand for invoking logical negation of the Equal operator.
class NotEqual extends BinaryExpression {
  NotEqual({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory NotEqual.fromJson(Map<String, dynamic> json) => NotEqual(
        operand: List<Expression>.from(
            json['operand'].map((x) => Expression.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'NotEqual';
}
