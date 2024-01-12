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
  Map<String, dynamic> toJson() => {
        'type': type,
        if (typeSpecifier != null) 'typeSpecifier': typeSpecifier!.toJson(),
        'element': element != null
            ? List<dynamic>.from(element!.map((x) => x.toJson()))
            : null,
      };

  @override
  String get type => 'List';
}
