import 'package:cql/src/internal.dart';

/// The With clause restricts the elements of a given source to only those elements that have elements in the related source that satisfy the suchThat condition.
/// This operation is known as a semi-join in database languages.
class With extends RelationshipClause {
  With({
    required super.alias,
    required super.expression,
    super.suchThat,
    super.type,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory With.fromJson(Map<String, dynamic> json) {
    return With(
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
              json['resultTypeSpecifier'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      if (type.isNotEmpty) 'type': type,
      'alias': alias,
      'expression': expression.toJson(),
    };
    if (suchThat != null) {
      map['suchThat'] = suchThat!.toJson();
    }
    if (annotation != null) {
      map['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      map['localId'] = localId;
    }
    if (locator != null) {
      map['locator'] = locator;
    }
    if (resultTypeName != null) {
      map['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      map['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return map;
  }

  @override
  String toString() => 'With(alias: $alias, expression: $expression, '
      'suchThat: $suchThat)';
}
