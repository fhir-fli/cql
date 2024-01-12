import '../../cql.dart';

/// The ReturnClause element defines the shape of the result set of the query.
class ReturnClause extends Element {
  final bool? distinct;
  final Expression expression;

  ReturnClause({
    required this.expression,
    this.distinct,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ReturnClause.fromJson(Map<String, dynamic> json) => ReturnClause(
        expression: Expression.fromJson(json['expression']),
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
            ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        if (distinct != null) 'distinct': distinct,
        'expression': expression.toJson(),
      };

  String get type => 'ReturnClause';
}
