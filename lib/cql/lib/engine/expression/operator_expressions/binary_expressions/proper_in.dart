import '../../../../cql.dart';

/// Operator to test for proper membership in an interval or list.
/// Returns true if the given point is greater than the starting point and less than the ending point of the interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperIn extends BinaryExpression {
  final DateTimePrecision? precision;

  ProperIn({this.precision, required super.operand});

  factory ProperIn.fromJson(Map<String, dynamic> json) => ProperIn(
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
