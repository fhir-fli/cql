import '../../../../cql.dart';

/// Operator to determine if the first interval ends the second interval.
/// Returns true if Start(i1) >= Start(i2) and End(i1) = End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Ends extends BinaryExpression {
  final DateTimePrecision? precision;
  final Expression left;
  final Expression right;

  Ends(
      {required this.left,
      required this.right,
      this.precision,
      required super.operands});

  factory Ends.fromJson(Map<String, dynamic> json) => Ends(
      left: json['left'],
      right: json['right'],
      precision: json['precision'],
      operands: json['operands']!);

  @override
  Map<String, dynamic> toJson() => {
        'precision': precision,
        'operands': operands,
      };
}