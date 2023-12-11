// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeDefs _$CodeDefsFromJson(Map<String, dynamic> json) => CodeDefs()
  ..annotation = (json['annotation'] as List<dynamic>?)
      ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
      .toList()
  ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
      ? null
      : TypeSpecifier.fromJson(
          json['resultTypeSpecifier'] as Map<String, dynamic>)
  ..localId = json['localId'] as String?
  ..locator = json['locator'] as String?
  ..resultTypeName = json['resultTypeName'] as String?
  ..def = (json['def'] as List<dynamic>)
      .map((e) => CodeDef.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$CodeDefsToJson(CodeDefs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'annotation', instance.annotation?.map((e) => e.toJson()).toList());
  writeNotNull('resultTypeSpecifier', instance.resultTypeSpecifier?.toJson());
  writeNotNull('localId', instance.localId);
  writeNotNull('locator', instance.locator);
  writeNotNull('resultTypeName', instance.resultTypeName);
  val['def'] = instance.def.map((e) => e.toJson()).toList();
  return val;
}

CodeDef _$CodeDefFromJson(Map<String, dynamic> json) => CodeDef(
      name: json['name'] as String,
      id: json['id'] as String,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.Public,
      codeSystem: json['codeSystem'] == null
          ? null
          : CodeSystemRef.fromJson(json['codeSystem'] as Map<String, dynamic>),
      display: json['display'] as String?,
    )
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>)
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] as String?;

Map<String, dynamic> _$CodeDefToJson(CodeDef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'annotation', instance.annotation?.map((e) => e.toJson()).toList());
  writeNotNull('resultTypeSpecifier', instance.resultTypeSpecifier?.toJson());
  writeNotNull('localId', instance.localId);
  writeNotNull('locator', instance.locator);
  writeNotNull('resultTypeName', instance.resultTypeName);
  val['name'] = instance.name;
  val['id'] = instance.id;
  val['accessLevel'] = _$AccessModifierEnumMap[instance.accessLevel]!;
  writeNotNull('codeSystem', instance.codeSystem?.toJson());
  writeNotNull('display', instance.display);
  return val;
}

const _$AccessModifierEnumMap = {
  AccessModifier.Public: 'Public',
  AccessModifier.Private: 'Private',
};
