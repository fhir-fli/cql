import '../../cql.dart';

/// The QueryLetRef expression allows for the reference of a specific let definition within the scope of a query.
class QueryLetRef extends Expression {
  final String name;

  QueryLetRef({
    required this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory QueryLetRef.fromJson(Map<String, dynamic> json) => QueryLetRef(
        name: json['name'],
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      'name': name,
    };
    return json;
  }

  @override
  String toString() {
    return 'QueryLetRef{name: $name}';
  }

  @override
  String get type => 'QueryLetRef';
}
