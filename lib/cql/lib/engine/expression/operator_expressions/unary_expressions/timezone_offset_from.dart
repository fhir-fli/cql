import '../../../../cql.dart';

/// Operator to return the timezone offset of the argument.
/// If the argument is null, the result is null.
class TimezoneOffsetFrom extends UnaryExpression {
  TimezoneOffsetFrom({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TimezoneOffsetFrom.fromJson(Map<String, dynamic> json) =>
      TimezoneOffsetFrom(
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
  String get type => 'TimezoneOffsetFrom';
}
