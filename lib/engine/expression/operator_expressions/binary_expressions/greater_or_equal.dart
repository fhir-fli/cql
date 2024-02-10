import '../../../../cql.dart';

/// Operator to check if the first argument is greater than or equal to the second argument.
/// Returns true if the first argument is greater than or equal to the second argument.
/// For comparisons involving quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// If either argument is null, the result is null.
/// The GreaterOrEqual operator is defined for the Integer, Decimal, String, Date, DateTime, Time, and Quantity types.
/// Note that relative ratio comparisons are not directly supported due to healthcare variance.
class GreaterOrEqual extends BinaryExpression {
  GreaterOrEqual({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory GreaterOrEqual.fromJson(Map<String, dynamic> json) => GreaterOrEqual(
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
    final Map<String, dynamic> json = {
      'type': type,
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String get type => 'GreaterOrEqual';
}
