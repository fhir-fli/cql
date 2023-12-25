import '../../../../cql.dart';

/// Operator to determine if the first interval starts before and overlaps the second interval.
/// Returns true if Start(i1) < Start(i2) and End(i1) >= Start(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class OverlapsBefore extends BinaryExpression {
  final DateTimePrecision? precision;

  OverlapsBefore({this.precision, required super.operand});

  factory OverlapsBefore.fromJson(Map<String, dynamic> json) => OverlapsBefore(
        precision: json['precision'] != null
            ? DateTimePrecisionExtension.fromJson(json['precision'])
            : null,
        operand: (json['operand'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        if (precision != null) 'precision': precision!.toJson(),
        'operand': operand.map((e) => e.toJson()).toList(),
      };

  @override
  String toString() => operand.join(' ${type.toUpperCase()} ');

  String get type => 'OverlapsBefore';
}
