import 'package:cql/src/internal.dart';

/// The ReturnClause element defines the shape of the result set of the query.
class ReturnClause extends Element {
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
        expression:
            CqlExpression.fromJson(json['expression'] as Map<String, dynamic>),
        distinct: json['distinct'] as bool?,
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
  final bool? distinct;
  final CqlExpression expression;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('distinct', distinct);
    writeNotNull('expression', expression.toJson());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  String get type => 'ReturnClause';

  @override
  String toString() => 'ReturnClause: $expression';
}
