import '../../../../cql.dart';

/// Operator to check if the first operand includes the second and is strictly larger.
/// Returns true if the first interval includes every element of the second interval,
/// using equality semantics, and the first interval is strictly larger.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperIncludes extends BinaryExpression {
  final DateTimePrecision? precision;

  ProperIncludes({this.precision, required super.operand});

  factory ProperIncludes.fromJson(Map<String, dynamic> json) => ProperIncludes(
        precision: json['precision'] != null
            ? DateTimePrecisionJson.fromJson(json['precision'])
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
}
