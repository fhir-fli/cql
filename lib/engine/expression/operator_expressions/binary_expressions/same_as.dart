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

  SameAs({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SameAs.fromJson(Map<String, dynamic> json) => SameAs(
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
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    if (precision != null) {
      data['precision'] = precision!.toJson();
    }
    data['operand'] = operand.map((e) => e.toJson()).toList();
    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      data['localId'] = localId;
    }
    if (locator != null) {
      data['locator'] = locator;
    }
    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return data;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'SameAs';
}
