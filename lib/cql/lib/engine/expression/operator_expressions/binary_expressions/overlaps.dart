import '../../../../cql.dart';

/// Operator to determine if the first interval overlaps the second interval.
/// Returns true if End(i1) >= Start(i2) and Start(i1) <= End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Overlaps extends BinaryExpression {
  final Expression left;
  final Expression right;
  final DateTimePrecision? precision;

  Overlaps(
      {required this.left,
      required this.right,
      this.precision,
      required super.operands});

  factory Overlaps.fromJson(Map<String, dynamic> json) => Overlaps(
        left: Expression.fromJson(json['left']),
        right: Expression.fromJson(json['right']),
        precision: json['precision'] != null
            ? DateTimePrecisionJson.fromJson(json['precision'])
            : null,
        operands: (json['operands'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'left': left.toJson(),
        'right': right.toJson(),
        'precision': precision?.toJson(),
      };
}
