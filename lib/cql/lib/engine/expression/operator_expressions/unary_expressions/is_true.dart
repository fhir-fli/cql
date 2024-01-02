import '../../../../cql.dart';

/// IsTrue operator determining whether its argument evaluates to true.
class IsTrue extends UnaryExpression {
  IsTrue({required super.operand});

  factory IsTrue.fromJson(Map<String, dynamic> json) => IsTrue(
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  String get type => 'IsTrue';
}
