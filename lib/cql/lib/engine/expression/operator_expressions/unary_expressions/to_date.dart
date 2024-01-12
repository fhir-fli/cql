import '../../../../cql.dart';

/// Operator to convert the value of its argument to a Date value.
/// The operator expects the string to be formatted using the ISO-8601 date representation: YYYY-MM-DD.
/// If the input string is not formatted correctly or does not represent a valid date value, the result is null.
/// If the argument is null, the result is null.
class ToDate extends UnaryExpression {
  ToDate({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToDate.fromJson(Map<String, dynamic> json) => ToDate(
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
  String get type => 'ToDate';
}
