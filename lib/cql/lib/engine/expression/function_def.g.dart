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
      ..resultTypeName = json['resultTypeName'] as String?
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..name = json['name'] as String
      ..context = json['context'] as String?
      ..accessLevel =
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel'])
      ..expression = json['expression'] == null
          ? null
          : Expression.fromJson(json['expression'] as Map<String, dynamic>)
      ..fluent = json['fluent'] as bool?;

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
  writeNotNull('resultTypeName', instance.resultTypeName);
  writeNotNull('localId', instance.localId);
  writeNotNull('locator', instance.locator);
  val['name'] = instance.name;
  writeNotNull('context', instance.context);
  writeNotNull('accessLevel', _$AccessModifierEnumMap[instance.accessLevel]);
  writeNotNull('expression', instance.expression?.toJson());
  writeNotNull('operand', instance.operand?.map((e) => e.toJson()).toList());
  writeNotNull('external', instance.external);
  writeNotNull('fluent', instance.fluent);
  return val;
}

const _$AccessModifierEnumMap = {
  AccessModifier.public: 'Public',
  AccessModifier.private: 'Private',
};
