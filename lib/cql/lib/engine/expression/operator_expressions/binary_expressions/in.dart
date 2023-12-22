import '../../../../cql.dart';

/// Operator to test for membership in an interval or list.
/// Returns true if the given point is greater than or equal to the starting point of the interval and less than or equal to the ending point of the interval.
/// For open interval boundaries, exclusive comparison operators are used. For closed interval boundaries, if the interval boundary is null, the result of the boundary comparison is considered true.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If the first argument is null, the result is null. If the second argument is null, the result is false.
class In extends BinaryExpression {
  final DateTimePrecision? precision;

  In({this.precision, required super.operand});

  factory In.fromJson(Map<String, dynamic> json) => In(
        precision: json['precision'] != null
            ? DateTimePrecisionJson.fromJson(json['precision'])
            : null,
        operand: json['operand']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'precision': precision?.toJson(),
        'operand': operand,
      };
}
