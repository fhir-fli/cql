import '../../cql.dart';

/// The Without clause restricts the elements of a given source to only those elements that do not have elements in the related source that satisfy the suchThat condition.
/// This operation is known as a semi-difference in database languages.
class Without extends RelationshipClause {
  Without({
    required super.alias,
    required super.expression,
    super.suchThat,
  });

  factory Without.fromJson(Map<String, dynamic> json) => Without(
        alias: json['alias'],
        expression: Expression.fromJson(json['expression']),
        suchThat: json['suchThat'] == null
            ? null
            : Expression.fromJson(json['suchThat']),
      );

  Map<String, dynamic> toJson() {
    final map = {
      'alias': alias,
      'expression': expression.toJson(),
    };
    if (suchThat != null) {
      map['suchThat'] = suchThat!.toJson();
    }
    return map;
  }
}
