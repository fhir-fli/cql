import '../../../cql.dart';

/// Represents a list type specifier, extending [TypeSpecifier].
///
/// The [ListTypeSpecifier] type represents a list type, inheriting from TypeSpecifier,
/// including an elementTypeSpecifier element and elementType attribute.

class ListTypeSpecifier extends TypeSpecifier {
  List<Element>? element;

  /// Element type specifier.
  TypeSpecifier? elementTypeSpecifier;

  ListTypeSpecifier({this.elementTypeSpecifier, this.element});

  factory ListTypeSpecifier.fromJson(Map<String, dynamic> json) =>
      ListTypeSpecifier(
        elementTypeSpecifier: json['elementTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['elementTypeSpecifier'])
            : null,
        element: json['element'] != null
            ? (json['element'] as List).map((i) => Element.fromJson(i)).toList()
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
    };
    if (elementTypeSpecifier != null) {
      json['elementTypeSpecifier'] = elementTypeSpecifier?.toJson();
    }
    if (element != null) {
      json['element'] = element?.map((i) => i.toJson()).toList();
    }
    return json;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'ListTypeSpecifier';
}
