import '../../../../cql.dart';

/// IsNull operator determining whether its argument evaluates to null.
class IsNull extends UnaryExpression {
  IsNull({required super.operand});

  factory IsNull.fromJson(Map<String, dynamic> json) => IsNull(
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
