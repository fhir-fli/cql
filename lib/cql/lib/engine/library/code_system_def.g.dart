// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_system_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSystemDefs _$CodeSystemDefsFromJson(Map<String, dynamic> json) =>
    CodeSystemDefs()
      ..def = (json['def'] as List<dynamic>)
          .map((e) => CodeSystemDef.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CodeSystemDefsToJson(CodeSystemDefs instance) =>
    <String, dynamic>{
      'def': instance.def.map((e) => e.toJson()).toList(),
    };

CodeSystemDef _$CodeSystemDefFromJson(Map<String, dynamic> json) =>
    CodeSystemDef(
      name: json['name'] as String?,
      id: json['id'] as String?,
      version: json['version'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.public,
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

Map<String, dynamic> _$CodeSystemDefToJson(CodeSystemDef instance) {
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
  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  writeNotNull('version', instance.version);
  val['accessLevel'] = _$AccessModifierEnumMap[instance.accessLevel]!;
  return val;
}

const _$AccessModifierEnumMap = {
  AccessModifier.public: 'Public',
  AccessModifier.private: 'Private',
};
