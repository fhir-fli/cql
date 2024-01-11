import '../../../cql.dart';

/// The Without clause restricts the elements of a given source to only those elements that do not have elements in the related source that satisfy the suchThat condition.
/// This operation is known as a semi-difference in database languages.
class Without extends RelationshipClause {
  Without({
    required super.alias,
    required super.expression,
    super.suchThat,
    super.type,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Without.fromJson(Map<String, dynamic> json) => Without(
        alias: json['alias'],
        expression: Expression.fromJson(json['expression']),
        suchThat: json['suchThat'] == null
            ? null
            : Expression.fromJson(json['suchThat']),
        type: json['type'] ?? '',
      );

  @override
  Map<String, dynamic> toJson() {
    final map = {
      if (type != '') 'type': type,
      'alias': alias,
      'expression': expression.toJson(),
    };
    if (suchThat != null) {
      map['suchThat'] = suchThat!.toJson();
    }
    return map;
  }

  @override
  String toString() => 'Without(alias: $alias, expression: $expression, '
      'suchThat: $suchThat)';
}
