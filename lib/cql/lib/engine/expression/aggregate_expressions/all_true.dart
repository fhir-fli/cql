import '../../../cql.dart';

/// The AllTrue operator returns true if all the non-null elements in source are true.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, true is returned.
/// If the source is null, the result is true.
class AllTrue extends AggregateExpression {
  AllTrue({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory AllTrue.fromJson(Map<String, dynamic> json) => AllTrue(
        source: Expression.fromJson(json['source']!),
        signature: json['signature'] == null
            ? null
            : (json['signature'] as List)
                .map((e) => TypeSpecifier.fromJson(e))
                .toList(),
        path: json['path'],
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'source': source,
        'signature': signature,
        'path': path,
      };

  @override
  String get type => 'AllTrue';
}
