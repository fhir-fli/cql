import 'package:cql/src/internal.dart';

/// The SortClause element defines the sort order for the query.
class AggregateClause extends Element {
  AggregateClause({
    required this.expression,
    required this.identifier,
    required this.distinct,
    this.starting,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory AggregateClause.fromJson(Map<String, dynamic> json) =>
      AggregateClause(
        expression: CqlExpression.fromJson(json['expression']),
        starting: json['starting'] == null
            ? null
            : CqlExpression.fromJson(json['starting']),
        identifier: json['identifier'],
        distinct: json['distinct'],
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
  CqlExpression expression;
  CqlExpression? starting; // Optional, can be null
  String identifier;
  bool distinct;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': type,
      'expression': expression.toJson(),
      'identifier': identifier,
      'distinct': distinct,
    };

    if (starting != null) {
      json['starting'] = starting!.toJson();
    }

    if (annotation != null) {
      json['annotation'] = annotation!.map((a) => a.toJson()).toList();
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
      json['resultTypeSpecifier'] = resultTypeSpecifier?.toJson();
    }

    return json;
  }

  String get type => 'AggregateClause';
}
