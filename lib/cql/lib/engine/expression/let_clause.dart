import '../../cql.dart';

/// The LetClause element allows any number of expression definitions to be introduced within a query scope.
/// Defined expressions can be referenced by name within the query scope.
class LetClause extends Element {
  final Expression expression;
  final String identifier;

  LetClause({
    required this.expression,
    required this.identifier,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory LetClause.fromJson(Map<String, dynamic> json) => LetClause(
        expression: Expression.fromJson(json['expression']),
        identifier: json['identifier'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'expression': expression.toJson(),
        'identifier': identifier,
      };

  @override
  String toString() => toJson().toString();

  String get type => 'LetClause';
}
