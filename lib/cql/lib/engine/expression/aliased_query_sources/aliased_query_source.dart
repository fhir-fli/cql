import '../../../cql.dart';

/// The AliasedQuerySource element defines a single source for inclusion in a query scope.
/// The type of the source is determined by the expression element, and the source can be accessed within the query scope by the given alias.
abstract class AliasedQuerySource extends Expression {
  final String alias;
  final Expression expression;

  AliasedQuerySource({
    required this.alias,
    required this.expression,
  });

  factory AliasedQuerySource.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'RelationshipClause':
        return RelationshipClause.fromJson(json);
      default:
        throw ArgumentError('Unknown AliasedQuerySource type: ${json['type']}');
    }
  }

  @override
  Map<String, dynamic> toJson() => {
        'alias': alias,
        'expression': expression,
      };
}
