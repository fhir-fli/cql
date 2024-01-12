import '../../../../cql.dart';

/// Operator to return the successor of the argument.
/// The Successor operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Successor extends UnaryExpression {
  Successor({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Successor.fromJson(Map<String, dynamic> json) => Successor(
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
  String get type => 'Successor';
}
