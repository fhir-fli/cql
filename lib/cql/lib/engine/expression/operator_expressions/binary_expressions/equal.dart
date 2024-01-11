import '../../../../cql.dart';

/// Operator to check if the arguments are equal.
/// Returns true if the arguments are equal, false if they are known unequal, and null otherwise.
/// Equality semantics are defined to be value-based.
/// If either argument is null, the result is null.
class Equal extends BinaryExpression {
  Equal({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Equal.fromJson(Map<String, dynamic> json) => Equal(
      operand: List<Expression>.from(
          json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'Equal';
}
