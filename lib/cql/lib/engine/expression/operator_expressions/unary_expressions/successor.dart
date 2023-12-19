import '../../../../cql.dart';

/// Operator to return the successor of the argument.
/// The Successor operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Successor extends UnaryExpression {
  Successor({required super.operand});

  factory Successor.fromJson(Map<String, dynamic> json) => Successor(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
