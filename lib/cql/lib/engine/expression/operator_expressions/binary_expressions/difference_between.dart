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
          precision: json['precision'], operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
        'precision': precision,
      };
}
