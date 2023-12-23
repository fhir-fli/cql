import '../../cql.dart';

/// The Query operator represents a clause-based query.
class Query extends Expression {
  List<LetClause>? let;
  List<RelationshipClause>? relationship;
  ReturnClause? returnClause;
  SortClause? sort;
  List<AliasedQuerySource> source;
  final String type = 'Query';
  Expression? where;

  Query({
    required this.source,
    this.let,
    this.relationship,
    this.where,
    this.returnClause,
    this.sort,
  });

  factory Query.fromJson(Map<String, dynamic> json) => Query(
        source: List<AliasedQuerySource>.from(
            json['source'].map((x) => AliasedQuerySource.fromJson(x))),
        let: json['let'] == null
            ? null
            : List<LetClause>.from(
                json['let'].map((x) => LetClause.fromJson(x))),
        relationship: json['relationship'] == null
            ? null
            : List<RelationshipClause>.from(json['relationship']
                .map((x) => RelationshipClause.fromJson(x))),
        where:
            json['where'] == null ? null : Expression.fromJson(json['where']),
        returnClause: json['return'] == null
            ? null
            : ReturnClause.fromJson(json['return']),
        sort: json['sort'] == null ? null : SortClause.fromJson(json['sort']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'source': List<dynamic>.from(source.map((x) => x.toJson())),
        if (let != null) 'let': List<dynamic>.from(let!.map((x) => x.toJson())),
        'relationship': relationship == null
            ? []
            : List<dynamic>.from(relationship!.map((x) => x.toJson())),
        if (where != null) 'where': where!.toJson(),
        if (returnClause != null) 'return': returnClause!.toJson(),
        if (sort != null) 'sort': sort!.toJson(),
      };
}
