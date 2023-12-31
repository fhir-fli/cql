import '../../../../cql.dart';

/// Operator to compute the logarithm of its first argument, using the second argument as the base.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Log extends BinaryExpression {
  Log({required super.operand});

  factory Log.fromJson(Map<String, dynamic> json) => Log(
        operand: List<Expression>.from(
            json['operand'].map((x) => Expression.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'Log';
}
