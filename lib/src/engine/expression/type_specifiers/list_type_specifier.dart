import 'package:cql/src/internal.dart';

/// Represents a list type specifier, extending [TypeSpecifier].
///
/// The [ListTypeSpecifier] type represents a list type, inheriting from TypeSpecifier,
/// including an elementType element and elementType attribute.

class ListTypeSpecifier extends TypeSpecifierExpression {
  ListTypeSpecifier({
    this.elementType,
    this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ListTypeSpecifier.fromJson(Map<String, dynamic> json) {
    return ListTypeSpecifier(
      elementType: json['elementType'] != null
          ? TypeSpecifierExpression.fromJson(
              json['elementType'] as Map<String, dynamic>)
          : null,
      element: json['element'] != null
          ? (json['element'] as List)
              .map((i) => Element.fromJson(i as Map<String, dynamic>))
              .toList()
          : null,
      annotation: json['annotation'] != null
          ? (json['annotation'] as List)
              .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      localId: json['localId'] as String?,
      locator: json['locator'] as String?,
      resultTypeName: json['resultTypeName'] as String?,
      resultTypeSpecifier: json['resultTypeSpecifier'] != null
          ? TypeSpecifierExpression.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>)
          : null,
    );
  }
  List<Element>? element;

  /// Element type specifier.
  TypeSpecifierExpression? elementType;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
    };

    if (elementType != null) {
      data['elementType'] = elementType!.toJson();
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
