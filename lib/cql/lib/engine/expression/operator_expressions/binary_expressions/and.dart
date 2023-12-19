import '../../../../cql.dart';

/// And operator returning the logical conjunction of its arguments.
class And extends BinaryExpression {
  And({required super.operands});

  factory And.fromJson(Map<String, dynamic> json) =>
      And(operands: json['operands']!);

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
