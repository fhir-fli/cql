import 'package:cql/src/internal.dart';

/// Represents a list type, extending [TypeInfo].
///
/// The [ListTypeInfo] type represents a list type, extending [TypeInfo],
/// including an elementTypeSpecifier element and elementType attribute.
class ListTypeInfo extends TypeInfo {
  ListTypeInfo({
    this.elementTypeSpecifier,
    this.elementType,
    super.baseType,
  });

  factory ListTypeInfo.fromJson(Map<String, dynamic> json) {
    return ListTypeInfo(
      elementTypeSpecifier: json['elementTypeSpecifier'] != null
          ? TypeSpecifierModel.fromJson(json['elementTypeSpecifier'])
          : null,
      elementType: json['elementType'] as String?,
      baseType: json['baseType'] as String?,
    );
  }

  /// Element type as a string.
  String? elementType;

  /// Element type specifier element.
  TypeSpecifierModel? elementTypeSpecifier;

  final String type = 'ListTypeInfo';

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'type': type};
    if (elementTypeSpecifier != null) {
      data['elementTypeSpecifier'] = elementTypeSpecifier!.toJson();
    }
    if (elementType != null) {
      data['elementType'] = elementType;
    }
    if (baseType != null) {
      data['baseType'] = baseType;
    }
    return data;
  }
}
