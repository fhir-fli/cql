import '../../../cql.dart';

/// The AliasedQuerySource element defines a single source for inclusion in a query scope.
/// The type of the source is determined by the expression element, and the source can be accessed within the query scope by the given alias.
abstract class AliasedQuerySource extends CqlExpression {
  final String alias;
  final CqlExpression expression;

  AliasedQuerySource({
    required this.alias,
    required this.expression,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory AliasedQuerySource.fromJson(Map<String, dynamic> json) {
    return RelationshipClause.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => {
        'alias': alias,
        'expression': expression.toJson(),
        if (annotation != null)
          'annotation': annotation!.map((e) => e.toJson()).toList(),
        if (localId != null) 'localId': localId,
        if (locator != null) 'locator': locator,
        if (resultTypeName != null) 'resultTypeName': resultTypeName,
        if (resultTypeSpecifier != null)
          'resultTypeSpecifier': resultTypeSpecifier!.toJson(),
      };

  @override
  String toString() => toJson().toString();
}
