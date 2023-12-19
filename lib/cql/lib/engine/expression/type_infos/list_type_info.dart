import '../../../cql.dart';

/// Represents a list type, extending [TypeInfo].
///
/// The [ListTypeInfo] type represents a list type, extending [TypeInfo],
/// including an elementTypeSpecifier element and elementType attribute.
class ListTypeInfo extends TypeInfo {
  /// Element type specifier element.
  TypeSpecifier? elementTypeSpecifier;

  /// Element type as a string.
  String? elementType;

  ListTypeInfo({
    this.elementTypeSpecifier,
    this.elementType,
  });

  factory ListTypeInfo.fromJson(Map<String, dynamic> json) {
    return ListTypeInfo(
      elementTypeSpecifier: json['elementTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['elementTypeSpecifier'])
          : null,
      elementType: json['elementType'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (elementTypeSpecifier != null) {
      data['elementTypeSpecifier'] = elementTypeSpecifier!.toJson();
    }
    if (elementType != null) {
      data['elementType'] = elementType;
    }
    return data;
  }
}
