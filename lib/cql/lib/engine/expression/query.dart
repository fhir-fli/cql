import '../../cql.dart';

/// The Query operator represents a clause-based query.
class Query extends Expression {
  List<LetClause>? let;
  List<RelationshipClause>? relationship;
  ReturnClause? returnClause;
  SortClause? sort;
  List<AliasedQuerySource> source;
  Expression? where;

  Query({
    required this.source,
    this.let,
    this.relationship,
    this.where,
    this.returnClause,
    this.sort,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'type': type,
      'source': source.map((x) => x.toJson()).toList(),
    };
    if (let != null) {
      data['let'] = let!.map((x) => x.toJson()).toList();
    }
    if (relationship != null) {
      data['relationship'] = relationship!.map((x) => x.toJson()).toList();
    }
    if (where != null) {
      data['where'] = where!.toJson();
    }
    if (returnClause != null) {
      data['return'] = returnClause!.toJson();
    }
    if (sort != null) {
      data['sort'] = sort!.toJson();
    }
    return data;
  }

  @override
  String get type => 'Query';
}
