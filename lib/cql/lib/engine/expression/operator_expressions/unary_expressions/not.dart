import '../../../../cql.dart';

/// Not operator returning the logical negation of its argument.
class Not extends UnaryExpression {
  Not({required super.operand});

  factory Not.fromJson(Map<String, dynamic> json) =>
      Not(operand: Expression.fromJson(json['operand']));

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
