import '../../cql.dart';

/// If operator evaluating a condition and returning the appropriate argument.
class If extends CqlExpression {
  /// Condition expression.
  CqlExpression condition;

  /// Else expression.
  CqlExpression elseExpr;

  /// Then expression.
  CqlExpression then;

  If({
    required this.condition,
    required this.then,
    required this.elseExpr,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory If.fromJson(Map<String, dynamic> json) => If(
        condition: CqlExpression.fromJson(json['condition']!),
        then: CqlExpression.fromJson(json['then']!),
        elseExpr: CqlExpression.fromJson(json['else']!),
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

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = {
      'type': type,
      'condition': condition.toJson(),
      'then': then.toJson(),
      'else': elseExpr.toJson(),
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

  @override
  String get type => 'If';
}
