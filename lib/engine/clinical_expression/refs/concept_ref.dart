import '../../../cql.dart';

/// The ConceptRef expression allows a previously defined concept to be
/// referenced within an expression.
class ConceptRef extends Ref {
  ConceptRef({
    required String name,
    String? libraryName,
    List<CqlToElmBase>? annotation,
    String? localId,
    String? locator,
    String? resultTypeName,
    TypeSpecifierExpression? resultTypeSpecifier,
  }) : super(
          name: name,
          libraryName: libraryName,
          annotation: annotation,
          localId: localId,
          locator: locator,
          resultTypeName: resultTypeName,
          resultTypeSpecifier: resultTypeSpecifier,
        );

  factory ConceptRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return ConceptRef(
      name: name,
      libraryName: json['libraryName'],
      annotation: json['annotation'] != null
          ? (json['annotation'] as List)
              .map((e) => CqlToElmBase.fromJson(e))
              .toList()
          : null,
      localId: json['localId'],
      locator: json['locator'],
      resultTypeName: json['resultTypeName'],
      resultTypeSpecifier: json['resultTypeSpecifier'] != null
          ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
          : null,
    );
  }

  @override
  String get type => 'ConceptRef';

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = super.toJson();
    return val;
  }
}
