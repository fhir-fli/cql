// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'include_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncludeDefs _$IncludeDefsFromJson(Map<String, dynamic> json) => IncludeDefs()
  ..def = (json['def'] as List<dynamic>)
      .map((e) => IncludeDef.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$IncludeDefsToJson(IncludeDefs instance) =>
    <String, dynamic>{
      'def': instance.def.map((e) => e.toJson()).toList(),
    };

IncludeDef _$IncludeDefFromJson(Map<String, dynamic> json) => IncludeDef(
      localIdentifier: json['localIdentifier'] as String?,
      mediaType: json['mediaType'] as String?,
      path: json['path'] as String?,
      version: json['version'] as String?,
    )
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>)
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] as String?;

Map<String, dynamic> _$IncludeDefToJson(IncludeDef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('annotation', instance.annotation);
  writeNotNull('resultTypeSpecifier', instance.resultTypeSpecifier?.toJson());
  writeNotNull('localId', instance.localId);
  writeNotNull('locator', instance.locator);
  writeNotNull('resultTypeName', instance.resultTypeName);
  writeNotNull('localIdentifier', instance.localIdentifier);
  writeNotNull('mediaType', instance.mediaType);
  writeNotNull('path', instance.path);
  writeNotNull('version', instance.version);
  return val;
}
