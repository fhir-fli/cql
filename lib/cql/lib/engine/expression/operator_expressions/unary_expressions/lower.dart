import '../../../../cql.dart';

/// Operator to convert the given string with all characters converted to their lowercase equivalents.
/// If the argument is null, the result is null.
class Lower extends UnaryExpression {
  Lower({required super.operand});

  factory Lower.fromJson(Map<String, dynamic> json) => Lower(
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  String get type => 'Lower';
}
