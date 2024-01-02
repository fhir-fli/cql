import '../../../../cql.dart';

/// Operator to return the first integer greater than or equal to the argument.
/// If the argument is null, the result is null.
class Ceiling extends UnaryExpression {
  Ceiling({required super.operand});

  factory Ceiling.fromJson(Map<String, dynamic> json) =>
      Ceiling(operand: Expression.fromJson(json['operand']!));

  @override
  String get type => 'Ceiling';
}
