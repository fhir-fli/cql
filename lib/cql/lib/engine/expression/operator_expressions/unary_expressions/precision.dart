import '../../../../cql.dart';

/// Operator to return the number of digits of precision in the input value.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the argument is null, the result is null.
class Precision extends UnaryExpression {
  Precision({required super.operand});

  factory Precision.fromJson(Map<String, dynamic> json) => Precision(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  String get type => 'Precision';
}
