import '../../../../cql.dart';

/// Operator to determine if the first interval ends immediately before the second interval starts
/// or if the first interval starts immediately after the second interval ends.
/// Returns true if End(i1) = Predecessor(Start(i2)) or End(i2) = Predecessor(Start(i1)).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Meets extends BinaryExpression {
  final Expression left;
  final Expression right;
  final DateTimePrecision? precision;

  Meets({
    required this.left,
    required this.right,
    this.precision,
    required super.operands,
  });

  factory Meets.fromJson(Map<String, dynamic> json) => Meets(
        left: json['left']!,
        right: json['right']!,
        precision: json['precision']!,
        operands: json['operands']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'left': left.toJson(),
        'right': right.toJson(),
        'precision': precision,
        'operands': operands,
      };
}