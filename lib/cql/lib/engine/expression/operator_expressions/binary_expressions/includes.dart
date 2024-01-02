import '../../../../cql.dart';

/// Operator to check if the first operand completely includes the second operand.
/// Returns true if the starting point of the first interval is less than or equal to the starting point of the second interval, and the ending point of the first interval is greater than or equal to the ending point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Includes extends BinaryExpression {
  final DateTimePrecision? precision;

  Includes({this.precision, required super.operand});

  factory Includes.fromJson(Map<String, dynamic> json) => Includes(
        precision: json['precision'] != null
            ? DateTimePrecisionExtension.fromJson(json['precision'])
            : null,
        operand: List<Expression>.from(
            json['operand'].map((x) => Expression.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        if (precision != null) 'precision': precision!.toJson(),
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  String get type => 'Includes';
}
