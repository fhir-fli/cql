import '../../../../cql.dart';

/// Operator to compare two Date, DateTime, or Time values to the specified precision for equality.
/// The SameAs operator compares values starting from the year or hour component down to the specified precision.
/// If all values are specified and have the same value for each component, then the result is true.
/// If a compared component is specified in both dates but the values are not the same, then the result is false.
/// Otherwise, the result is null, as there is not enough information to make a determination.
/// If no precision is specified, the comparison is performed beginning with years (or hours for time values) and proceeding to the finest precision specified in either input.
/// If either argument is null, the result is null.
class SameAs extends BinaryExpression {
  final DateTimePrecision? precision;

  SameAs({this.precision, required super.operands});

  factory SameAs.fromJson(Map<String, dynamic> json) => SameAs(
        precision: json['precision'] != null
            ? DateTimePrecisionJson.fromJson(json['precision'])
            : null,
        operands: (json['operands'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'precision': precision?.toJson(),
        'operands': operands.map((e) => e.toJson()).toList(),
      };
}
