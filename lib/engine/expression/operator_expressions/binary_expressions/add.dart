import '../../../../cql.dart';

/// Operator to perform numeric addition of its arguments.
/// When adding quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// The Add operator is defined for the Integer, Decimal, and Quantity types.
/// In addition, a time-valued Quantity can be added to a Date, DateTime, or Time using this operator.
/// If either argument is null, the result is null.
/// If the result of the addition cannot be represented (i.e., arithmetic overflow), the result is null.
class Add extends BinaryExpression {
  Add({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Add.fromJson(Map<String, dynamic> json) => Add(
        operand: List<Expression>.from(
          json['operand'].map((x) => Expression.fromJson(x)),
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
  String get type => 'Add';
}
