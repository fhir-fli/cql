import '../../../cql.dart';

/// The PopulationStdDev operator returns the statistical standard deviation of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class PopulationStdDev extends AggregateExpression {
  PopulationStdDev({
    required super.source,
    super.signature,
    super.path,
  });

  factory PopulationStdDev.fromJson(Map<String, dynamic> json) =>
      PopulationStdDev(
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
  String get type => 'PopulationStdDev';
}
