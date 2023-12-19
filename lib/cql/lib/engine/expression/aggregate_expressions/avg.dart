import '../../../cql.dart';

/// The Avg operator returns the average of the non-null elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class Avg extends AggregateExpression {
  Avg({
    required Expression source,
    List<TypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );

  factory Avg.fromJson(Map<String, dynamic> json) => Avg(
        source: json['source']!,
        signature: json['signature'],
        path: json['path'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'source': source,
        'signature': signature,
        'path': path,
      };
}
