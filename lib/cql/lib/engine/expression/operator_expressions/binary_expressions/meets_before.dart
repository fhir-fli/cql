import '../../../../cql.dart';

/// Operator to determine if the first interval ends immediately before the second interval starts.
/// Returns true if End(i1) = Predecessor(Start(i2)).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class MeetsBefore extends BinaryExpression {
  final Expression left;
  final DateTimePrecision? precision;
  final Expression right;

  MeetsBefore(
      {required this.left,
      required this.right,
      this.precision,
      required super.operand});

  factory MeetsBefore.fromJson(Map<String, dynamic> json) => MeetsBefore(
        left: json['left']!,
        right: json['right']!,
        precision: json['precision']!,
        operand: json['operand']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'left': left.toJson(),
        'right': right.toJson(),
        'precision': precision,
        'operand': operand,
      };
}
