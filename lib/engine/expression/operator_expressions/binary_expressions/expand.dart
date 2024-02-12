import '../../../../cql.dart';

/// Operator returns the set of intervals of size per for all the ranges present in the given list of intervals.
/// Adjacent intervals within a sorted list are merged if they either overlap or meet.
/// The operation combines successive intervals in the input that either overlap or meet.
/// If the per argument is null, it's constructed based on the coarsest precision of the boundaries of the intervals in the input set.
/// If the list of intervals is empty, the result is empty. If the list contains a single interval, the result is a list with that interval.
/// If the list contains nulls, they will be excluded from the resulting list.
/// If the source argument is null, the result is null.
class Expand extends BinaryExpression {
  Expand({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Expand.fromJson(Map<String, dynamic> json) => Expand(
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
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
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String get type => 'Expand';
}
