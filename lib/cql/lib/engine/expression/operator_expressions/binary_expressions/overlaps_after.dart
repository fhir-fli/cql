import '../../../../cql.dart';

/// Operator to determine if the first interval overlaps and ends after the second interval.
/// Returns true if End(i1) > End(i2) and Start(i1) <= End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class OverlapsAfter extends BinaryExpression {
  final DateTimePrecision? precision;

  OverlapsAfter({this.precision, required super.operand});

  factory OverlapsAfter.fromJson(Map<String, dynamic> json) => OverlapsAfter(
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
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'OverlapsAfter';
}
