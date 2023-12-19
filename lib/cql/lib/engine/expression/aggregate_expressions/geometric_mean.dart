import '../../../cql.dart';

/// The GeometricMean operator returns the geometric mean of the non-null elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class GeometricMean extends AggregateExpression {
  GeometricMean({
    required Expression source,
    List<TypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );

  factory GeometricMean.fromJson(Map<String, dynamic> json) => GeometricMean(
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
