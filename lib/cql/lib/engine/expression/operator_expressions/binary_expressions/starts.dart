import '../../../../cql.dart';

/// Operator to determine if the first interval starts the second interval.
/// Returns true if Start(i1) = Start(i2) and End(i1) <= End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Starts extends BinaryExpression {
  final DateTimePrecision? precision;

  Starts({this.precision, required super.operand, super.isList = false});

  factory Starts.fromJson(Map<String, dynamic> json) => Starts(
        precision: json['precision'] != null
            ? DateTimePrecisionExtension.fromJson(json['precision'])
            : null,
        operand: (json['operand'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'precision': precision,
        'type': type,
        'operand': isList
            ? operand.map((e) => e.toJson()).toList()
            : operand.first.toJson(),
      };

  String get type => 'Starts';
}
