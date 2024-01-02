import '../../../../cql.dart';

/// Operator to check if the first operand contains the second operand.
/// Returns true if the given point is greater than or equal to the starting point of the interval and less than or equal to the ending point of the interval.
/// For open interval boundaries, exclusive comparison operators are used. For closed interval boundaries, if the interval boundary is null, the result of the boundary comparison is considered true.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If the first argument is null, the result is false. If the second argument is null, the result is null.
class Contains extends BinaryExpression {
  final DateTimePrecision? precision;

  Contains({this.precision, required super.operand});

  factory Contains.fromJson(Map<String, dynamic> json) => Contains(
      precision: json['precision'] == null
          ? null
          : DateTimePrecisionExtension.fromJson(json['precision']),
      operand: List<Expression>.from(
          json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        if (precision != null) 'precision': precision!.toJson(),
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  String get type => 'Contains';
}
