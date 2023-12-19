import '../../../cql.dart';

/// The AnyTrue operator returns true if any non-null element in source is true.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, false is returned.
/// If the source is null, the result is false.
class AnyTrue extends AggregateExpression {
  AnyTrue({
    required Expression source,
    List<TypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );

  factory AnyTrue.fromJson(Map<String, dynamic> json) => AnyTrue(
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
