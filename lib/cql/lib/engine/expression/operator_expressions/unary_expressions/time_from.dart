import '../../../../cql.dart';

/// Operator to return the Time of the argument.
/// When extracting the time from a DateTime value, implementations should normalize to the timezone offset of the evaluation request timestamp.
/// If the argument is null, the result is null.
class TimeFrom extends UnaryExpression {
  TimeFrom({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TimeFrom.fromJson(Map<String, dynamic> json) => TimeFrom(
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
  String get type => 'TimeFrom';
}
