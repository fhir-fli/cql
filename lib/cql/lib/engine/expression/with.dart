import '../../cql.dart';

/// The With clause restricts the elements of a given source to only those elements that have elements in the related source that satisfy the suchThat condition.
/// This operation is known as a semi-join in database languages.
class With extends RelationshipClause {
  With({
    required super.alias,
    required super.expression,
    super.suchThat,
  });

  factory With.fromJson(Map<String, dynamic> json) => With(
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
