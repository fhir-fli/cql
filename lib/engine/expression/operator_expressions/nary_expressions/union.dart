import '../../../../cql.dart';

/// Union operator returns the union of its arguments.
/// This operator has two overloads: List, Interval.
/// For the list overload, this operator returns a list with all unique
/// elements from both arguments, using equality semantics, with null elements
/// considered equal. For the interval overload, this operator returns the
/// interval that starts at the earliest starting point in either argument and
/// ends at the latest starting point in either argument. If the arguments do
/// not overlap or meet, returns null. If either argument is null, the
/// operation is performed as though the argument was an empty list.
class Union extends NaryExpression {
  Union({
    super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Union.fromJson(Map<String, dynamic> json) => Union(
        operand: json['operand'] != null
            ? (json['operand'] as List)
                .map((e) => CqlExpression.fromJson(e))
                .toList()
            : null,
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  String get type => 'Union';

  @override
  Map<String, dynamic> toJson() {
    final data = super.toJson();
    data['type'] = type;
    if (operand != null) {
      data['operand'] = operand!.map((e) => e.toJson()).toList();
    }
    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      data['localId'] = localId;
    }
    if (locator != null) {
      data['locator'] = locator;
    }
    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return data;
  }
}
