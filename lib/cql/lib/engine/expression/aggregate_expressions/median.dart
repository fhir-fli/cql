import '../../../cql.dart';

/// The Median operator returns the median of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class Median extends AggregateExpression {
  Median({
    required Expression source,
    List<TypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );

  factory Median.fromJson(Map<String, dynamic> json) => Median(
        source: json['source']!,
        signature: json['signature'] != null
            ? List<TypeSpecifier>.from(
                json['signature'].map((x) => TypeSpecifier.fromJson(x)))
            : null,
        path: json['path']!,
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