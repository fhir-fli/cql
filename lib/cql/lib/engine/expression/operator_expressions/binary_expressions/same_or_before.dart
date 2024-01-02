import '../../../../cql.dart';

/// Operator to compare two Date, DateTime, or Time values to the specified precision to determine if the first argument is the same or before the second argument.
/// If no precision is specified, the comparison is performed beginning with years (or hours for time values) and proceeding to the finest precision specified in either input.
/// For Date values, precision must be one of year, month, or day.
/// For DateTime values, precision must be one of year, month, day, hour, minute, second, or millisecond.
/// For Time values, precision must be one of hour, minute, second, or millisecond.
class SameOrBefore extends BinaryExpression {
  final DateTimePrecision? precision;

  SameOrBefore({this.precision, required super.operand});

  factory SameOrBefore.fromJson(Map<String, dynamic> json) => SameOrBefore(
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
  String toString() => toJson().toString();

  String get type => 'SameOrBefore';
}
