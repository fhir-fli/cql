import 'package:cql/src/internal.dart';

/// The RelationshipClause element allows related sources to be used to
/// restrict the elements included from another source in a query scope.
/// Note that the elements referenced by the relationship clause can only be
/// accessed within the suchThat condition, and that elements of the related
/// source are not included in the query scope.
class RelationshipClause extends AliasedQuerySource {
  RelationshipClause({
    required super.alias,
    required super.expression,
    this.suchThat,
    this.type = '',
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory RelationshipClause.fromJson(Map<String, dynamic> json) =>
      RelationshipClause(
        alias: json['alias'] as String,
        expression:
            CqlExpression.fromJson(json['expression'] as Map<String, dynamic>),
        suchThat: json['suchThat'] == null
            ? null
            : CqlExpression.fromJson(json['suchThat'] as Map<String, dynamic>),
        type: (json['type'] as String?) ?? '',
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
      );
  final CqlExpression? suchThat;
  @override
  final String type;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'alias': alias,
      'expression': expression.toJson(),
    };
    if (suchThat != null) {
      json['suchThat'] = suchThat!.toJson();
    }
    if (type.isNotEmpty) {
      json['type'] = type;
    }
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String toString() => toJson().toString();
}
