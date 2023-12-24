// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value_set_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValueSetDefs _$ValueSetDefsFromJson(Map<String, dynamic> json) => ValueSetDefs()
  ..def = (json['def'] as List<dynamic>)
      .map((e) => ValueSetDef.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$ValueSetDefsToJson(ValueSetDefs instance) =>
    <String, dynamic>{
      'def': instance.def.map((e) => e.toJson()).toList(),
    };

ValueSetDef _$ValueSetDefFromJson(Map<String, dynamic> json) => ValueSetDef(
      codeSystem: (json['codeSystem'] as List<dynamic>?)
          ?.map((e) => CodeSystemRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      id: json['id'] as String?,
      version: json['version'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.public,
    )
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
          .toList()
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] as String?
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>);

Map<String, dynamic> _$ValueSetDefToJson(ValueSetDef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'annotation', instance.annotation?.map((e) => e.toJson()).toList());
  writeNotNull('localId', instance.localId);
  writeNotNull('locator', instance.locator);
  writeNotNull('resultTypeName', instance.resultTypeName);
  writeNotNull('resultTypeSpecifier', instance.resultTypeSpecifier?.toJson());
  val['accessLevel'] = _$AccessModifierEnumMap[instance.accessLevel]!;
  writeNotNull(
      'codeSystem', instance.codeSystem?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('version', instance.version);
  return val;
}

const _$AccessModifierEnumMap = {
  AccessModifier.public: 'Public',
  AccessModifier.private: 'Private',
};
