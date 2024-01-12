import '../../../../cql.dart';

/// Operator to return the predecessor of the argument.
/// The Predecessor operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Predecessor extends UnaryExpression {
  Predecessor({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Predecessor.fromJson(Map<String, dynamic> json) => Predecessor(
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
  String get type => 'Predecessor';
}
