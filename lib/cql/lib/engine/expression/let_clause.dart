import '../../cql.dart';

/// The LetClause element allows any number of expression definitions to be introduced within a query scope.
/// Defined expressions can be referenced by name within the query scope.
class LetClause extends Element {
  final Expression expression;
  final String identifier;

  LetClause({
    required this.expression,
    required this.identifier,
  });

  factory LetClause.fromJson(Map<String, dynamic> json) => LetClause(
        expression: Expression.fromJson(json['expression']),
        identifier: json['identifier'],
      );

  Map<String, dynamic> toJson() => {
        'expression': expression.toJson(),
        'identifier': identifier,
      };
}