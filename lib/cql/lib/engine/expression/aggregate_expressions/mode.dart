import '../../../cql.dart';

/// The Mode operator returns the statistical mode of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class Mode extends AggregateExpression {
  Mode({
    required super.source,
    super.signature,
    super.path,
  });

  factory Mode.fromJson(Map<String, dynamic> json) => Mode(
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
        'source': source.toJson(),
        'signature': signature != null
            ? List<dynamic>.from(signature!.map((x) => x.toJson()))
            : null,
        'path': path,
      };
}
