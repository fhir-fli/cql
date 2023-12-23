import '../../../../cql.dart';

/// Operator to determine if the first interval starts after the second interval ends.
/// Returns true if the starting point of the first interval is greater than the ending point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class After extends BinaryExpression {
  final DateTimePrecision? precision;

  After({this.precision, required super.operand});

  factory After.fromJson(Map<String, dynamic> json) =>
      After(precision: json['precision'], operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        if (precision != null) 'precision': precision!.toJson(),
        'operand': operand,
      };

  String get type => 'After';
}
