import '../../../../cql.dart';

/// Operator to check if the first operand is completely included in the second operand.
/// Returns true if the starting point of the first interval is greater than or equal to the starting point of the second interval,
/// and the ending point of the first interval is less than or equal to the ending point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class IncludedIn extends BinaryExpression {
  final DateTimePrecision? precision;

  IncludedIn({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IncludedIn.fromJson(Map<String, dynamic> json) => IncludedIn(
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

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'IncludedIn';
}
