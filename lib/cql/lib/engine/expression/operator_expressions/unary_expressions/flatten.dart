import '../../../../cql.dart';

/// The Flatten operator flattens a list of lists into a single list.
/// If the argument is null, the result is null.
class Flatten extends UnaryExpression {
  Flatten({required super.operand});

  factory Flatten.fromJson(Map<String, dynamic> json) => Flatten(
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  String get type => 'Flatten';
}
