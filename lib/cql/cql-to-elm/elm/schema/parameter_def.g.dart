// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParameterDef _$ParameterDefFromJson(Map<String, dynamic> json) => ParameterDef(
      defaultExpression: json['defaultExpression'] == null
          ? null
          : Expression.fromJson(
              json['defaultExpression'] as Map<String, dynamic>),
      parameterTypeSpecifier: json['parameterTypeSpecifier'] == null
          ? null
          : ExpTypeSpecifier.fromJson(
              json['parameterTypeSpecifier'] as Map<String, dynamic>),
      name: json['name'] as String,
      parameterType: json['parameterType'] == null
          ? null
          : QName.fromJson(json['parameterType'] as Map<String, dynamic>),
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.Public,
    )
      ..annotation = json['annotation'] as List<dynamic>?
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : ExpTypeSpecifier.fromJson(
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

  writeNotNull('annotation', instance.annotation);
  writeNotNull('resultTypeSpecifier', instance.resultTypeSpecifier?.toJson());
  writeNotNull('localId', instance.localId);
  writeNotNull('locator', instance.locator);
  writeNotNull('resultTypeName', instance.resultTypeName);
  writeNotNull('defaultExpression', instance.defaultExpression?.toJson());
  writeNotNull(
      'parameterTypeSpecifier', instance.parameterTypeSpecifier?.toJson());
  val['name'] = instance.name;
  writeNotNull('parameterType', instance.parameterType?.toJson());
  val['accessLevel'] = _$AccessModifierEnumMap[instance.accessLevel]!;
  return val;
}

const _$AccessModifierEnumMap = {
  AccessModifier.Public: 'Public',
  AccessModifier.Private: 'Private',
};
