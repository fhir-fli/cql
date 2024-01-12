import '../../../../cql.dart';

/// Operator to check if the first operand is included in the second and is strictly smaller.
/// Returns true if every element of the first interval is included in the second interval,
/// using equality semantics, and the first interval is strictly smaller.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperIncludedIn extends BinaryExpression {
  final DateTimePrecision? precision;

  ProperIncludedIn({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ProperIncludedIn.fromJson(Map<String, dynamic> json) =>
      ProperIncludedIn(
        precision: json['precision'] != null
            ? DateTimePrecisionExtension.fromJson(json['precision'])
            : null,
        operand: List<Expression>.from(
          json['operand'].map(
            (x) => Expression.fromJson(x),
          ),
        ),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        if (precision != null) 'precision': precision!.toJson(),
        'operand': operand.map((e) => e.toJson()).toList(),
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'ProperIncludedIn';
}
