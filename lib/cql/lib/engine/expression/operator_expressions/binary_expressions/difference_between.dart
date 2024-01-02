import '../../../../cql.dart';

/// Operator to return the number of boundaries crossed for the specified precision between the first and second arguments.
/// If the first argument is after the second argument, the result is negative.
/// Because this operation is only counting boundaries crossed, the result is always an integer.
/// If either argument is null, the result is null.
class DifferenceBetween extends BinaryExpression {
  final DateTimePrecision precision;

  DifferenceBetween({required this.precision, required super.operand});

  factory DifferenceBetween.fromJson(Map<String, dynamic> json) =>
      DifferenceBetween(
          precision: DateTimePrecisionExtension.fromJson(json['precision']),
          operand: List<Expression>.from(
              json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'precision': precision.toJson(),
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'DifferenceBetween';
}
