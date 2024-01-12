import '../../../../cql.dart';

/// Is operator allowing testing the type of a result.
class Is extends UnaryExpression {
  /// Type to test against.
  QName? isType;

  /// Type specifier for testing.
  TypeSpecifier? isTypeSpecifier;

  Is({
    this.isTypeSpecifier,
    this.isType,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Is.fromJson(Map<String, dynamic> json) => Is(
        isTypeSpecifier: json['isTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['isTypeSpecifier'])
            : null,
        isType: json['isType'] != null ? QName.fromJson(json['isType']) : null,
        operand: Expression.fromJson(json['operand']!),
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
        if (isType != null) 'isType': isType!.toJson(),
        'type': type,
        'operand': operand.toJson(),
        if (isTypeSpecifier != null)
          'toTypeSpecifier': isTypeSpecifier!.toJson(),
      };

  @override
  String get type => 'Is';
}
