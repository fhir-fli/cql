import '../../../../cql.dart';

/// Operator to convert a value of type Code to a Concept value with the given Code.
/// If the Code has a display value, the resulting Concept will have the same display value.
/// If the argument is null, the result is null.
class ToConcept extends UnaryExpression {
  ToConcept({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToConcept.fromJson(Map<String, dynamic> json) => ToConcept(
        operand: Expression.fromJson(json['operand']),annotation: json['annotation'] != null
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
  String get type => 'ToConcept';
}
