import '../../../../cql.dart';

/// Operator to check if its arguments are not the same value.
/// Returns true if its arguments are not the same value.
/// This operator is a shorthand for invoking logical negation of the Equal operator.
class NotEqual extends BinaryExpression {
  NotEqual({required super.operand});

  factory NotEqual.fromJson(Map<String, dynamic> json) => NotEqual(
        operand: json['operand']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
