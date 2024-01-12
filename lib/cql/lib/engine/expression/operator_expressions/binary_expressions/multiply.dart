import '../../../../cql.dart';

/// Operator to perform numeric multiplication of its arguments.
/// For multiplication operations involving quantities, the resulting quantity will have the appropriate unit.
/// The Multiply operator is defined for the Integer, Decimal, and Quantity types.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Multiply extends BinaryExpression {
  Multiply({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Multiply.fromJson(Map<String, dynamic> json) => Multiply(
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
  String get type => 'Multiply';
}
