import '../../cql.dart';

/// The Property operator returns the value of the property on source specified by the path attribute.
/// If the result of evaluating source is null, the result is null.
/// The path attribute may include qualifiers (.) and indexers ([x]). Indexers must be literal integer values.
/// If the path attribute contains qualifiers or indexers, each qualifier or indexer is traversed to obtain the actual value.
/// If the object of the property access at any point in traversing the path is null, the result is null.
/// If a scope is specified, the name is used to resolve the scope in which the path will be resolved.
/// Property expressions can also be used to access the individual points and closed indicators for interval types using the property names low, high, lowClosed, and highClosed.
class Property extends Expression {
  final String path;
  final String? scope;
  final Expression? source;

  Property({
    required this.path,
    this.source,
    this.scope,
  });

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      path: json['path'],
      source:
          json['source'] != null ? Expression.fromJson(json['source']) : null,
      scope: json['scope'],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'path': path,
        if (source != null) 'source': source!.toJson(),
        if (scope != null) 'scope': scope,
        'type': type,
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Property';
}
