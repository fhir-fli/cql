import '../../../../cql.dart';

/// And operator returning the logical conjunction of its arguments.
class And extends BinaryExpression {
  And({required super.operand});

  factory And.fromJson(Map<String, dynamic> json) => And(
      operand: List<Expression>.from(
          json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'And';

  @override
  String toString() => 'And(operand: $operand)';
}
