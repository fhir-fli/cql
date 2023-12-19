import '../../../../cql.dart';

/// Operator to determine if the first interval starts immediately after the second interval ends.
/// Returns true if End(i2) = Predecessor(Start(i1)).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class MeetsAfter extends BinaryExpression {
  final Expression left;
  final Expression right;
  final DateTimePrecision? precision;

  MeetsAfter(
      {required this.left,
      required this.right,
      this.precision,
      required super.operands});

  factory MeetsAfter.fromJson(Map<String, dynamic> json) => MeetsAfter(
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
