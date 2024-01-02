import '../../../../cql.dart';

/// Or operator returning the logical disjunction of its arguments.
class Or extends BinaryExpression {
  Or({required super.operand});

  factory Or.fromJson(Map<String, dynamic> json) => Or(
        operand: (json['operand'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((e) => e.toJson()).toList(),
      };

  @override
  String get type => 'Or';
}
