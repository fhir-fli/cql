import '../../../cql.dart';

/// The RelationshipClause element allows related sources to be used to restrict the elements included from another source in a query scope.
/// Note that the elements referenced by the relationship clause can only be accessed within the suchThat condition, and that elements of the related source are not included in the query scope.
class RelationshipClause extends AliasedQuerySource {
  final Expression? suchThat;
  @override
  final String type;

  RelationshipClause({
    required super.alias,
    required super.expression,
    this.suchThat,
    this.type = '',
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory RelationshipClause.fromJson(Map<String, dynamic> json) =>
      RelationshipClause(
        alias: json['alias'],
        expression: Expression.fromJson(json['expression']),
        suchThat: json['suchThat'] == null
            ? null
            : Expression.fromJson(json['suchThat']),
        type: json['type'] ?? '',
      );

  @override
  Map<String, dynamic> toJson() => {
        'alias': alias,
        if (type != '') 'type': type,
        'expression': expression.toJson(),
        if (suchThat != null) 'suchThat': suchThat!.toJson(),
      };

  @override
  String toString() => toJson().toString();
}
