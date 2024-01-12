import '../../cql.dart';

/// The SubsumedBy operator returns true if the given codes are equivalent, or
/// if the first code is subsumed by the second code (i.e. the first code is a
/// descendent of the second code in a subsumption hierarchy), and false
/// otherwise.
///
/// For the Concept overload, this operator returns true if any code in the first
/// concept is subsumed by any code in the second.
///
/// If either or both arguments are null, the result is null.
class SubsumedBy extends BinaryExpression {
  SubsumedBy({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SubsumedBy.fromJson(Map<String, dynamic> json) => SubsumedBy(
        operand: (json['operand']! as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
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
        'operand': operand,
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'SubsumedBy';
}
