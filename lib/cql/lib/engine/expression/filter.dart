import '../../cql.dart';

/// Filter operator returns a list with only those elements in the source list for which the condition element evaluates to true.
/// If the source argument is null, the result is null.
class Filter extends Expression {
  Filter({
    required this.source,
    required this.condition,
    required this.scope,
  });

  final Expression source;
  final Expression condition;
  final String scope;

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
        source: json['source']!,
        condition: json['condition']!,
        scope: json['scope']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'source': source,
        'condition': condition,
        'scope': scope,
      };
}
