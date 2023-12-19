import '../../../../cql.dart';

/// Xor operator returning the exclusive or of its arguments.
class Xor extends BinaryExpression {
  Xor({required super.operands});

  factory Xor.fromJson(Map<String, dynamic> json) => Xor(
        operands: (json['operands'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands.map((e) => e.toJson()).toList(),
      };
}
