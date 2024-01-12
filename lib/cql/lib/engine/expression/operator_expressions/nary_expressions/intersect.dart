import '../../../../cql.dart';

/// Intersect operator returns the intersection of its arguments.
/// This operator has two overloads: List, Interval.
/// For the list overload, returns a list with the elements that appear in both lists using equality semantics. Null elements are considered equal for intersection purposes. The operator is defined with set semantics.
/// For the interval overload, returns the interval that defines the overlapping portion of both arguments. If the arguments do not overlap, returns null.
/// If either argument is null, the result is null.
class Intersect extends NaryExpression {
  Intersect({
    super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Intersect.fromJson(Map<String, dynamic> json) => Intersect(
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
  String get type => 'Intersect';
}
