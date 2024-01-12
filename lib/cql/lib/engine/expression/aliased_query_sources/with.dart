import '../../../cql.dart';

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
      alias: json['alias'],
      expression: Expression.fromJson(json['expression']),
      suchThat: json['suchThat'] == null
          ? null
          : Expression.fromJson(json['suchThat']),
      type: json['type'] ?? '',
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
  }

  @override
  Map<String, dynamic> toJson() {
    print('what to json');
    final map = {
      'alias': alias,
      if (type != '') 'type': type,
      'expression': expression.toJson(),
    };
    if (suchThat != null) {
      map['suchThat'] = suchThat!.toJson();
    }
    return map;
  }

  @override
  String toString() => 'With(alias: $alias, expression: $expression, '
      'suchThat: $suchThat)';
}
