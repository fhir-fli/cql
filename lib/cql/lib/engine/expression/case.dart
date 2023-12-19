import '../../cql.dart';

/// Represents a case operator allowing multiple conditional expressions to be chained together.
class Case extends Expression {
  /// Expression to compare against.
  Expression? comparand;

  /// List of case items specifying conditions and actions.
  final List<CaseItem> caseItem;

  /// Action to perform if none of the conditions are met.
  final Expression elseExpr;

  Case({this.comparand, required this.caseItem, required this.elseExpr});

  factory Case.fromJson(Map<String, dynamic> json) => Case(
        comparand: json['comparand'],
        caseItem: json['caseItem']!,
        elseExpr: json['else']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'comparand': comparand,
        'caseItem': caseItem,
        'else': elseExpr,
      };
}
