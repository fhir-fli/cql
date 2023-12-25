import '../../../../cql.dart';

/// Operator to check if the arguments are equal.
/// Returns true if the arguments are equal, false if they are known unequal, and null otherwise.
/// Equality semantics are defined to be value-based.
/// If either argument is null, the result is null.
class Equal extends BinaryExpression {
  Equal({required super.operand});

  factory Equal.fromJson(Map<String, dynamic> json) =>
      Equal(operand: List<Expression>.from(
          json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
