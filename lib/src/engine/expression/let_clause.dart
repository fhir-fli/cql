import 'package:cql/src/internal.dart';

/// The LetClause element allows any number of expression definitions to be introduced within a query scope.
/// Defined expressions can be referenced by name within the query scope.
class LetClause extends Element {
  LetClause({
    required this.expression,
    required this.identifier,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory LetClause.fromJson(Map<String, dynamic> json) => LetClause(
        expression:
            CqlExpression.fromJson(json['expression'] as Map<String, dynamic>),
        identifier: json['identifier'] as String,
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
  final CqlExpression expression;
  final String identifier;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      'identifier': identifier,
      'expression': expression.toJson(),
    };
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String toString() => toJson().toString();

  String get type => 'LetClause';
}
