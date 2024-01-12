import '../../../../cql.dart';

/// Operator to compute the remainder of the division of its arguments.
/// The Modulo operator is defined for the Integer and Decimal types.
/// If either argument is null, the result is null.
/// If the result of the modulo cannot be represented, or the right argument is 0, the result is null.
class Modulo extends BinaryExpression {
  Modulo({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Modulo.fromJson(Map<String, dynamic> json) => Modulo(
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
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'Modulo';
}
