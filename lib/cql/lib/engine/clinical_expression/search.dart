import '../../cql.dart';

class Search extends Property {
  Search({
    required super.path,
    super.source,
    super.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Search.fromJson(Map<String, dynamic> json) => Search(
        path: json['path'],
        source:
            json['source'] != null ? Expression.fromJson(json['source']) : null,
        scope: json['scope'],
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
        'path': path,
        if (source != null) 'source': source!.toJson(),
        if (scope != null) 'scope': scope,
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Search';
}
