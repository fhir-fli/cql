import '../../../cql.dart';

/// The Sum operator returns the sum of non-null elements in the source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the list is null, the result is null.
class Sum extends AggregateExpression {
  Sum({
    required super.source,
    super.signature,
    super.path,
  });

  factory Sum.fromJson(Map<String, dynamic> json) => Sum(
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
      'type': type,
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

  @override
  String get type => 'Sum';
}
