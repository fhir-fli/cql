import '../../../../cql.dart';

/// Operator to perform integer division of its arguments.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, or the right argument is 0, the result is null.
/// The TruncatedDivide operator is defined for the Integer and Decimal types.
class TruncatedDivide extends BinaryExpression {
  TruncatedDivide({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TruncatedDivide.fromJson(Map<String, dynamic> json) =>
      TruncatedDivide(
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
        'operand': operand.map((e) => e.toJson()).toList(),
      };

  @override
  String get type => 'TruncatedDivide';
}
