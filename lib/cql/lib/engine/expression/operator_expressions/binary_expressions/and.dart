import '../../../../cql.dart';

/// And operator returning the logical conjunction of its arguments.
class And extends BinaryExpression {
  And({required super.operand});

  factory And.fromJson(Map<String, dynamic> json) =>
      And(operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand,
      };

  String get type => 'And';
}
