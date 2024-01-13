import '../../cql.dart';

/// List selector returning a List value.
class ListExpression extends Expression {
  /// Elements of the list evaluated in order.
  List<Expression>? element;

  /// Type specifier for the list, if provided.
  TypeSpecifier? typeSpecifier;

  ListExpression({
    this.typeSpecifier,
    this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ListExpression.fromJson(Map<String, dynamic> json) {
    return ListExpression(
      typeSpecifier: json['typeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['typeSpecifier'])
          : null,
      element: json['element'] != null
          ? List<Expression>.from(
              json['element'].map((x) => Expression.fromJson(x)))
          : null,
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
    final Map<String, dynamic> val = <String, dynamic>{'type': type};
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('typeSpecifier', typeSpecifier?.toJson());
    writeNotNull('element', element?.map((x) => x.toJson()).toList());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String get type => 'List';
}
