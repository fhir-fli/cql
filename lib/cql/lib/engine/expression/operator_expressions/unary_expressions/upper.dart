import '../../../../cql.dart';

/// Operator to convert the given string with all characters converted to their upper case equivalents.
/// If the argument is null, the result is null.
class Upper extends UnaryExpression {
  Upper({required super.operand});

  factory Upper.fromJson(Map<String, dynamic> json) => Upper(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
