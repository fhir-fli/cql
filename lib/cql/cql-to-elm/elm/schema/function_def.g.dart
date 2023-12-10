// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FunctionDefs _$FunctionDefsFromJson(Map<String, dynamic> json) => FunctionDefs()
  ..functions = (json['functions'] as List<dynamic>)
      .map((e) => FunctionDef.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$FunctionDefsToJson(FunctionDefs instance) =>
    <String, dynamic>{
      'functions': instance.functions.map((e) => e.toJson()).toList(),
    };

FunctionDef _$FunctionDefFromJson(Map<String, dynamic> json) => FunctionDef(
      operand: (json['operand'] as List<dynamic>?)
          ?.map((e) => OperandDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      external: json['external'] as bool?,
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
      ..resultTypeName = json['resultTypeName'] as String?
      ..expression = json['expression'] == null
          ? null
          : Expression.fromJson(json['expression'] as Map<String, dynamic>)
      ..name = json['name'] as String
      ..context = json['context'] as String?
      ..accessLevel = $enumDecode(_$AccessModifierEnumMap, json['accessLevel']);

Map<String, dynamic> _$FunctionDefToJson(FunctionDef instance) {
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
  writeNotNull('expression', instance.expression?.toJson());
  val['name'] = instance.name;
  writeNotNull('context', instance.context);
  val['accessLevel'] = _$AccessModifierEnumMap[instance.accessLevel]!;
  writeNotNull('operand', instance.operand?.map((e) => e.toJson()).toList());
  writeNotNull('external', instance.external);
  return val;
}

const _$AccessModifierEnumMap = {
  AccessModifier.Public: 'Public',
  AccessModifier.Private: 'Private',
};
