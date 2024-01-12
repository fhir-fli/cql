import '../../cql.dart';

/// Filter operator returns a list with only those elements in the source list for which the condition element evaluates to true.
/// If the source argument is null, the result is null.
class Filter extends Expression {
  final Expression condition;
  final String scope;
  final Expression source;

  Filter({
    required this.source,
    required this.condition,
    required this.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
        source: json['source']!,
        condition: json['condition']!,
        scope: json['scope']!,
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
  Map<String, dynamic> toJson() => {
        'type': type,
        'source': source.toJson(),
        'condition': condition.toJson(),
        'scope': scope,
      };

  @override
  String get type => 'Filter';
}
