import '../../cql.dart';

/// Represents an element within a case operator, specifying conditions and their corresponding actions.
class CaseItem extends Element {
  /// Action to perform if the condition is met.
  final Expression then;

  /// Condition to evaluate.
  final Expression when_;

  CaseItem({
    required this.when_,
    required this.then,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CaseItem.fromJson(Map<String, dynamic> json) => CaseItem(
        when_: Expression.fromJson(json['when']!),
        then: Expression.fromJson(json['then']!),
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
        'when': when_.toJson(),
        'then': then.toJson(),
      };

  String get type => 'CaseItem';
}
