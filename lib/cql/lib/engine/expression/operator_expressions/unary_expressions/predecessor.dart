import '../../../../cql.dart';

/// Operator to return the predecessor of the argument.
/// The Predecessor operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Predecessor extends UnaryExpression {
  Predecessor({required super.operand});

  factory Predecessor.fromJson(Map<String, dynamic> json) => Predecessor(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
