import '../../../../cql.dart';

/// Operator to perform string concatenation of its arguments.
/// If any argument is null, the result is null.
class Concatenate extends NaryExpression {
  Concatenate({super.operand});

  factory Concatenate.fromJson(Map<String, dynamic> json) => Concatenate(
      operand: (json['operand'] as List)
          .map((e) => Expression.fromJson(e))
          .toList());

  @override
  String get type => 'Concatenate';
}
