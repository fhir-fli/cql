import '../../../cql.dart';

/// Operator to return the date and time of the start timestamp associated with the evaluation request.
/// Now is defined to always return the same value within any given evaluation.
class Now extends OperatorExpression {
  Now({
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Now.fromJson(Map<String, dynamic> json) => Now(
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
  String get type => 'Now';
}
