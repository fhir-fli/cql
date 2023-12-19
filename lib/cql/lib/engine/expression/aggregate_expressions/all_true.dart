import '../../../cql.dart';

/// The AllTrue operator returns true if all the non-null elements in source are true.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, true is returned.
/// If the source is null, the result is true.
class AllTrue extends AggregateExpression {
  AllTrue({
    required Expression source,
    List<TypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );

  factory AllTrue.fromJson(Map<String, dynamic> json) => AllTrue(
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
