import '../../../../cql.dart';

/// Operator to check if the first operand properly contains the second operand.
/// Returns true if the given point is greater than the starting point of the interval and less than the ending point of the interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperContains extends BinaryExpression {
  final DateTimePrecision? precision;

  ProperContains({this.precision, required super.operand});

  factory ProperContains.fromJson(Map<String, dynamic> json) => ProperContains(
        precision: json['precision'] != null
            ? DateTimePrecisionExtension.fromJson(json['precision'])
            : null,
        operand: (json['operand'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'precision': precision?.toJson(),
        'operand': operand.map((e) => e.toJson()).toList(),
      };

  @override
  String toString() => toJson().toString();
}
