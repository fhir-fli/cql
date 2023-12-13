// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expression_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpressionDefs _$ExpressionDefsFromJson(Map<String, dynamic> json) =>
    ExpressionDefs()
      ..def = (json['def'] as List<dynamic>)
          .map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ExpressionDefsToJson(ExpressionDefs instance) =>
    <String, dynamic>{
      'def': instance.def.map((e) => e.toJson()).toList(),
    };

ExpressionDef _$ExpressionDefFromJson(Map<String, dynamic> json) =>
    ExpressionDef(
      name: json['name'] as String,
      context: json['context'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']),
      expression: json['expression'] == null
          ? null
          : Expression.fromJson(json['expression'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExpressionDefToJson(ExpressionDef instance) {
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
  return val;
}

const _$AccessModifierEnumMap = {
  AccessModifier.public: 'Public',
  AccessModifier.private: 'Private',
};
