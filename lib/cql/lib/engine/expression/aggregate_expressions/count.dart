import '../../../cql.dart';

/// The Count operator returns the number of non-null elements in the source.
/// If a path is specified, the count returns the number of elements that have a value for the property specified by the path.
/// If the list is empty, the result is 0.
/// If the list is null, the result is 0.
class Count extends AggregateExpression {
  Count({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Count.fromJson(Map<String, dynamic> json) => Count(
        source: Expression.fromJson(json['source']!),
        signature: json['signature'] == null
            ? null
            : (json['signature'] as List)
                .map((e) => TypeSpecifier.fromJson(e))
                .toList(),
        path: json['path'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'source': source,
        'signature': signature,
        'path': path,
      };

  @override
  String get type => 'Count';
}
