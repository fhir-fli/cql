// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FunctionDef _$FunctionDefFromJson(Map<String, dynamic> json) => FunctionDef(
      operand: (json['operand'] as List<dynamic>?)
          ?.map((e) => OperandDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      external: json['external'] as bool?,
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
      ..resultTypeName = json['resultTypeName'] as String?
      ..name = json['name'] as String
      ..context = json['context'] as String?
      ..accessLevel = $enumDecode(_$AccessModifierEnumMap, json['accessLevel'])
      ..expression = json['expression'] == null
          ? null
          : Expression.fromJson(json['expression'] as Map<String, dynamic>);

Map<String, dynamic> _$FunctionDefToJson(FunctionDef instance) {
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
  writeNotNull('context', instance.context);
  val['accessLevel'] = _$AccessModifierEnumMap[instance.accessLevel]!;
  writeNotNull('expression', instance.expression?.toJson());
  writeNotNull('operand', instance.operand?.map((e) => e.toJson()).toList());
  writeNotNull('external', instance.external);
  return val;
}

const _$AccessModifierEnumMap = {
  AccessModifier.Public: 'Public',
  AccessModifier.Private: 'Private',
};