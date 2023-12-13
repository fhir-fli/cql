// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParameterDefs _$ParameterDefsFromJson(Map<String, dynamic> json) =>
    ParameterDefs()
      ..def = (json['def'] as List<dynamic>)
          .map((e) => ParameterDef.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ParameterDefsToJson(ParameterDefs instance) =>
    <String, dynamic>{
      'def': instance.def.map((e) => e.toJson()).toList(),
    };

ParameterDef _$ParameterDefFromJson(Map<String, dynamic> json) => ParameterDef(
      name: json['name'] as String,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.public,
      parameterTypeSpecifier: json['parameterTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['parameterTypeSpecifier'] as Map<String, dynamic>),
      defaultExpression: json['defaultExpression'] == null
          ? null
          : Expression.fromJson(
              json['defaultExpression'] as Map<String, dynamic>),
      parameterType: json['parameterType'] == null
          ? null
          : QName.fromJson(json['parameterType'] as String),
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

Map<String, dynamic> _$ParameterDefToJson(ParameterDef instance) {
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
  val['accessLevel'] = _$AccessModifierEnumMap[instance.accessLevel]!;
  writeNotNull(
      'parameterTypeSpecifier', instance.parameterTypeSpecifier?.toJson());
  writeNotNull('defaultExpression', instance.defaultExpression?.toJson());
  writeNotNull('parameterType', instance.parameterType?.toJson());
  return val;
}

const _$AccessModifierEnumMap = {
  AccessModifier.public: 'Public',
  AccessModifier.Private: 'Private',
};
