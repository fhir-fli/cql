import '../../../../cql.dart';

/// Operator to check if the first operand is completely included in the second operand.
/// Returns true if the starting point of the first interval is greater than or equal to the starting point of the second interval,
/// and the ending point of the first interval is less than or equal to the ending point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class IncludedIn extends BinaryExpression {
  final DateTimePrecision? precision;

  IncludedIn({this.precision, required super.operand});

  factory IncludedIn.fromJson(Map<String, dynamic> json) => IncludedIn(
        precision: json['precision'] != null
            ? DateTimePrecisionJson.fromJson(json['precision'])
            : null,
        operand: json['operand']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        if (precision != null) 'precision': precision!.toJson(),
        'operand': operand,
      };

  @override
  String toString() => toJson().toString();

  String get type => 'IncludedIn';
}
