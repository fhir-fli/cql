import '../../cql.dart';

/// The Repeat expression performs successive ForEach until no new elements are returned.
/// It uses equality comparison semantics as defined in the Equal operator.
/// If the source argument is null, the result is null.
/// If the element argument evaluates to null for some item in the source list, the resulting list will contain a null for that element.
class Repeat extends Expression {
  final Expression element;
  final String scope;
  final Expression source;

  Repeat({
    required this.source,
    required this.element,
    required this.scope,
  });

  factory Repeat.fromJson(Map<String, dynamic> json) => Repeat(
        source: Expression.fromJson(json['source']),
        element: Expression.fromJson(json['element']),
        scope: json['scope'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'source': source.toJson(),
        'element': element.toJson(),
        'scope': scope,
      };

  @override
  String get type => 'Repeat';
}
