import '../../../../cql.dart';

/// Operator to check if its arguments are not the same value.
/// Returns true if its arguments are not the same value.
/// This operator is a shorthand for invoking logical negation of the Equal operator.
class NotEqual extends BinaryExpression {
  NotEqual({required super.operands});

  factory NotEqual.fromJson(Map<String, dynamic> json) => NotEqual(
        operands: json['operands']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
