import '../../../../cql.dart';

/// Xor operator returning the exclusive or of its arguments.
class Xor extends BinaryExpression {
  Xor({required super.operand});

  factory Xor.fromJson(Map<String, dynamic> json) => Xor(
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
  String get type => 'Xor';
}
