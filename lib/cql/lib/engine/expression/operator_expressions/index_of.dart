import '../../../cql.dart';

/// The IndexOf operator returns the 0-based index of the given element in the given source list.
/// The operator uses equality semantics as defined in the Equal operator to determine the index.
/// If the list is empty or no element is found, the result is -1.
/// If either argument is null, the result is null.
class IndexOf extends OperatorExpression {
  final Expression element;
  final Expression source;

  IndexOf({
    required this.source,
    required this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IndexOf.fromJson(Map<String, dynamic> json) => IndexOf(
        source: Expression.fromJson(json['source']!),
        element: Expression.fromJson(json['element']!),
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
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
      'element': element.toJson(),
    };

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
  String get type => 'IndexOf';
}
