import '../../../cql.dart';

/// The StdDev operator returns the statistical standard deviation of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the list is null, the result is null.
class StdDev extends AggregateExpression {
  StdDev({
    required Expression source,
    List<TypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );

  factory StdDev.fromJson(Map<String, dynamic> json) => StdDev(
        source: Expression.fromJson(json['source']),
        signature: json['signature'] != null
            ? (json['signature'] as List)
                .map((e) => TypeSpecifier.fromJson(e))
                .toList()
            : null,
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
