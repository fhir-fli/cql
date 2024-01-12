import '../../../../cql.dart';

/// Operator to check if the value of its argument can be converted to a Boolean value.
/// The operator accepts various string representations of true and false.
/// If the input cannot be interpreted as a valid Boolean value, the result is false.
/// If the argument is null, the result is null.
class ConvertsToBoolean extends UnaryExpression {
  ConvertsToBoolean({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ConvertsToBoolean.fromJson(Map<String, dynamic> json) =>
      ConvertsToBoolean(
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
  String get type => 'ConvertsToBoolean';
}
