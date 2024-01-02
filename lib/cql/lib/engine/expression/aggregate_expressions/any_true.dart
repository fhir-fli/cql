import '../../../cql.dart';

/// The AnyTrue operator returns true if any non-null element in source is true.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, false is returned.
/// If the source is null, the result is false.
class AnyTrue extends AggregateExpression {
  AnyTrue({
    required super.source,
    super.signature,
    super.path,
  });

  factory AnyTrue.fromJson(Map<String, dynamic> json) => AnyTrue(
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
  String get type => 'AnyTrue';
}
