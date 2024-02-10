import '../../../../cql.dart';

/// Operator to return the size of an interval (End(i) - Start(i) + point-size), where point-size is determined by: Successor(Minimum_T) - Minimum_T.
/// Note: This operator is not defined for intervals of type Date, DateTime, and Time.
/// If the argument is null, the result is null.
class Size extends UnaryExpression {
  Size({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        operand: Expression.fromJson(json['operand']),
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
  String get type => 'Size';
  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };

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
}
