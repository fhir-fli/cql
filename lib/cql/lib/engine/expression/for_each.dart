import '../../cql.dart';

/// The ForEach expression iterates over the list of elements in the source element.
/// It returns a list with the same number of elements, where each element in the new list is the result of evaluating the element expression for each element in the source list.
/// If the source argument is null, the result is null.
/// If the element argument evaluates to null for some item in the source list, the resulting list will contain a null for that element.
class ForEach extends Expression {
  final Expression element;
  final String scope;
  final Expression source;

  ForEach({
    required this.source,
    required this.element,
    required this.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ForEach.fromJson(Map<String, dynamic> json) => ForEach(
        source: json['source']!,
        element: json['element']!,
        scope: json['scope']!,
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
        'type': type,
        'source': source.toJson(),
        'element': element.toJson(),
        'scope': scope,
      };

  @override
  String get type => 'ForEach';
}
