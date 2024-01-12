import '../../../cql.dart';

/// Operator to return the time-of-day of the start timestamp associated with the evaluation request.
class TimeOfDay extends OperatorExpression {
  TimeOfDay({
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TimeOfDay.fromJson(Map<String, dynamic> json) => TimeOfDay(
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
      };

  @override
  String get type => 'TimeOfDay';
}
