import '../../../cql.dart';

/// The Avg operator returns the average of the non-null elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class Avg extends AggregateExpression {
  Avg({
    required super.source,
    super.signature,
    super.path,
  });

  factory Avg.fromJson(Map<String, dynamic> json) => Avg(
        source: Expression.fromJson(json['source']!),
        signature: json['signature'] == null
            ? null
            : (json['signature'] as List)
                .map((e) => TypeSpecifier.fromJson(e))
                .toList(),
        path: json['path'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'source': source,
        'signature': signature,
        'path': path,
      };

  @override
  String get type => 'Avg';
}
