// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_type_specifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTypeSpecifier _$ListTypeSpecifierFromJson(Map<String, dynamic> json) =>
    ListTypeSpecifier(
      elementTypeSpecifier: json['elementTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['elementTypeSpecifier'] as Map<String, dynamic>),
      elementType: json['elementType'] as String?,
    );

Map<String, dynamic> _$ListTypeSpecifierToJson(ListTypeSpecifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('elementTypeSpecifier', instance.elementTypeSpecifier?.toJson());
  writeNotNull('elementType', instance.elementType);
  return val;
}
