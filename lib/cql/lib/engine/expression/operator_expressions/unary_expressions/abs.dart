import '../../../../cql.dart';

/// Operator to return the absolute value of its argument.
/// When taking the absolute value of a quantity, the unit is unchanged.
/// If the argument is null or the result of taking the absolute value cannot be represented, the result is null.
/// The Abs operator is defined for the Integer, Decimal, and Quantity types.
class Abs extends UnaryExpression {
  Abs({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Abs.fromJson(Map<String, dynamic> json) => Abs(
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
  String get type => 'Abs';
}
