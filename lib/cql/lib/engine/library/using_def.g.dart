// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'using_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsingDefs _$UsingDefsFromJson(Map<String, dynamic> json) => UsingDefs()
  ..def = (json['def'] as List<dynamic>)
      .map((e) => UsingDef.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$UsingDefsToJson(UsingDefs instance) => <String, dynamic>{
      'def': instance.def.map((e) => e.toJson()).toList(),
    };

UsingDef _$UsingDefFromJson(Map<String, dynamic> json) => UsingDef(
      localIdentifier: json['localIdentifier'] as String?,
      uri: json['uri'] as String?,
      version: json['version'] as String?,
    )
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>)
      ..resultTypeName = json['resultTypeName'] as String?
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?;

Map<String, dynamic> _$UsingDefToJson(UsingDef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'annotation', instance.annotation?.map((e) => e.toJson()).toList());
  writeNotNull('resultTypeSpecifier', instance.resultTypeSpecifier?.toJson());
  writeNotNull('resultTypeName', instance.resultTypeName);
  writeNotNull('localId', instance.localId);
  writeNotNull('locator', instance.locator);
  writeNotNull('localIdentifier', instance.localIdentifier);
  writeNotNull('uri', instance.uri);
  writeNotNull('version', instance.version);
  return val;
}
