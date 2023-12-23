import '../../cql.dart';

/// List selector returning a List value.
class ListExpression extends Expression {
  /// Elements of the list evaluated in order.
  List<Expression>? element;

  /// Type specifier for the list, if provided.
  TypeSpecifier? typeSpecifier;

  ListExpression({this.typeSpecifier, this.element});

  factory ListExpression.fromJson(Map<String, dynamic> json) => ListExpression(
        typeSpecifier: json['typeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['typeSpecifier'])
            : null,
        element: json['element'] != null
            ? List<Expression>.from(
                json['element'].map((x) => Expression.fromJson(x)))
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'typeSpecifier': typeSpecifier?.toJson(),
        'element': element != null
            ? List<dynamic>.from(element!.map((x) => x.toJson()))
            : null,
      };
}
