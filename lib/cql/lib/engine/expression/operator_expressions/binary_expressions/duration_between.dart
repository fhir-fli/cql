import '../../../../cql.dart';

/// Operator to return the number of whole calendar periods for the specified precision between the first and second arguments.
/// If the first argument is after the second argument, the result is negative.
/// The result of this operation is always an integer; any fractional periods are dropped.
/// If either argument is null, the result is null.
class DurationBetween extends BinaryExpression {
  final DateTimePrecision precision;

  DurationBetween({required this.precision, required super.operand});

  factory DurationBetween.fromJson(Map<String, dynamic> json) =>
      DurationBetween(
          precision: DateTimePrecisionExtension.fromJson(json['precision']),
          operand: List<Expression>.from(
              json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
        'precision': precision,
      };
}
