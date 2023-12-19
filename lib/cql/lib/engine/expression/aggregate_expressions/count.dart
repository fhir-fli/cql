import '../../../cql.dart';

/// The Count operator returns the number of non-null elements in the source.
/// If a path is specified, the count returns the number of elements that have a value for the property specified by the path.
/// If the list is empty, the result is 0.
/// If the list is null, the result is 0.
class Count extends AggregateExpression {
  Count({
    required Expression source,
    List<TypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );

  factory Count.fromJson(Map<String, dynamic> json) => Count(
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
