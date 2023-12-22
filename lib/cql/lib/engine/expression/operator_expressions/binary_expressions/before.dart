import '../../../../cql.dart';

/// Operator to determine if the first interval ends before the second interval starts.
/// Returns true if the ending point of the first interval is less than the starting point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Before extends BinaryExpression {
  final DateTimePrecision? precision;

  Before({this.precision, required super.operand});

  factory Before.fromJson(Map<String, dynamic> json) =>
      Before(precision: json['precision'], operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'precision': precision,
        'operand': operand,
      };
}
