import '../../../../cql.dart';

/// Or operator returning the logical disjunction of its arguments.
class Or extends BinaryExpression {
  Or({required super.operands});

  factory Or.fromJson(Map<String, dynamic> json) => Or(
        operands: (json['operands'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands.map((e) => e.toJson()).toList(),
      };
}
