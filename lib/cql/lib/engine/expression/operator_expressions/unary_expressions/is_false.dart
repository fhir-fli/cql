import '../../../../cql.dart';

/// IsFalse operator determining whether its argument evaluates to false.
class IsFalse extends UnaryExpression {
  IsFalse({required super.operand});

  factory IsFalse.fromJson(Map<String, dynamic> json) => IsFalse(
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  String get type => 'IsFalse';
}
