import '../../../../cql.dart';

/// Operator to determine if the first interval ends the second interval.
/// Returns true if Start(i1) >= Start(i2) and End(i1) = End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Ends extends BinaryExpression {
  final DateTimePrecision? precision;

  Ends({this.precision, required super.operand, super.isList = true});

  factory Ends.fromJson(Map<String, dynamic> json) => Ends(
      precision: json['precision'] != null
          ? DateTimePrecisionExtension.fromJson(json['precision'])
          : null,
      operand: json['operand'] != null
          ? json['operand'] is List
              ? (json['operand'] as List)
                  .map((e) => Expression.fromJson(e as Map<String, dynamic>))
                  .toList()
              : [Expression.fromJson(json['operand'] as Map<String, dynamic>)]
          : <Expression>[],
      isList: json['operand'] == null ? false : json['operand'] is List);

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        if (precision != null) 'precision': precision!.toJson(),
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  String get type => 'Ends';
}
