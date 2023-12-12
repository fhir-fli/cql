import '../../cql.dart';

/// The RelationshipClause element allows related sources to be used to restrict the elements included from another source in a query scope.
/// Note that the elements referenced by the relationship clause can only be accessed within the suchThat condition, and that elements of the related source are not included in the query scope.
class RelationshipClause extends AliasedQuerySource {
  final Expression? suchThat;

  RelationshipClause({
    required super.alias,
    required super.expression,
    this.suchThat,
  });

  factory RelationshipClause.fromJson(Map<String, dynamic> json) =>
      RelationshipClause(
        alias: json['alias'],
        expression: Expression.fromJson(json['expression']),
        suchThat: Expression.fromJson(json['suchThat']),
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
