// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeDef _$CodeDefFromJson(Map<String, dynamic> json) => CodeDef(
      codeSystem: json['codeSystem'] == null
          ? null
          : CodeSystemRef.fromJson(json['codeSystem'] as Map<String, dynamic>),
      name: json['name'] as String,
      id: json['id'] as String,
      display: json['display'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.Public,
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

Map<String, dynamic> _$CodeDefToJson(CodeDef instance) {
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
  writeNotNull('codeSystem', instance.codeSystem?.toJson());
  val['name'] = instance.name;
  val['id'] = instance.id;
  writeNotNull('display', instance.display);
  val['accessLevel'] = _$AccessModifierEnumMap[instance.accessLevel]!;
  return val;
}

const _$AccessModifierEnumMap = {
  AccessModifier.Public: 'Public',
  AccessModifier.Private: 'Private',
};
