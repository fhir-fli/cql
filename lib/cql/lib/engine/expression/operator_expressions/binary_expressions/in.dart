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
          ? DateTimePrecisionExtension.fromJson(json['precision'])
          : null,
      operand: List<Expression>.from(
          json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        if (precision != null) 'precision': precision!.toJson(),
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'In';
}
