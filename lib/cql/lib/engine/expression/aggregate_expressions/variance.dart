import '../../../cql.dart';

/// The Variance operator returns the statistical variance of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class Variance extends AggregateExpression {
  Variance({
    required super.source,
    super.signature,
    super.path,
  });

  factory Variance.fromJson(Map<String, dynamic> json) => Variance(
        source: Expression.fromJson(json['source']!),
        signature: json['signature'] == null
            ? null
            : (json['signature'] as List)
                .map((e) => TypeSpecifier.fromJson(e))
                .toList(),
        path: json['path'],
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'source': source.toJson(),
    };
    if (signature != null) {
      json['signature'] = signature!.map((e) => e.toJson()).toList();
    }
    if (path != null) {
      json['path'] = path;
    }
    return json;
  }
}
