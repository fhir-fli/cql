import '../../cql.dart';

/// Represents a case operator allowing multiple conditional expressions to be chained together.
class Case extends Expression {
  /// List of case items specifying conditions and actions.
  final List<CaseItem> caseItem;

  /// Expression to compare against.
  Expression? comparand;

  /// Action to perform if none of the conditions are met.
  final Expression elseExpr;

  Case({
    this.comparand,
    required this.caseItem,
    required this.elseExpr,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Case.fromJson(Map<String, dynamic> json) => Case(
        comparand: json['comparand'] == null
            ? null
            : Expression.fromJson(json['comparand']),
        caseItem: (json['caseItem']! as List)
            .map((e) => CaseItem.fromJson(e))
            .toList(),
        elseExpr: Expression.fromJson(json['else']!),
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
    final data = <String, dynamic>{
      'type': type,
      'caseItem': caseItem.map((e) => e.toJson()).toList(),
      'else': elseExpr.toJson(),
    };

    if (comparand != null) {
      data['comparand'] = comparand!.toJson();
    }

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String get type => 'Case';
}
