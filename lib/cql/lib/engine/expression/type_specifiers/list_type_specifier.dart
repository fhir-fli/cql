import '../../../cql.dart';

/// Represents a list type specifier, extending [TypeSpecifier].
///
/// The [ListTypeSpecifier] type represents a list type, inheriting from TypeSpecifier,
/// including an elementTypeSpecifier element and elementType attribute.

class ListTypeSpecifier extends TypeSpecifier {
  List<Element>? element;

  /// Element type specifier.
  TypeSpecifier? elementTypeSpecifier;

  ListTypeSpecifier({
    this.elementTypeSpecifier,
    this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ListTypeSpecifier.fromJson(Map<String, dynamic> json) =>
      ListTypeSpecifier(
        elementTypeSpecifier: json['elementTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['elementTypeSpecifier'])
            : null,
        element: json['element'] != null
            ? (json['element'] as List).map((i) => Element.fromJson(i)).toList()
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

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
    };

    if (elementTypeSpecifier != null) {
      data['elementTypeSpecifier'] = elementTypeSpecifier!.toJson();
    }

    if (element != null) {
      data['element'] = element!.map((e) => e.toJson()).toList();
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

    return data;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'ListTypeSpecifier';
}
