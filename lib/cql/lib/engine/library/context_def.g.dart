// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContextDefs _$ContextDefsFromJson(Map<String, dynamic> json) => ContextDefs()
  ..def = (json['def'] as List<dynamic>)
      .map((e) => ContextDef.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$ContextDefsToJson(ContextDefs instance) =>
    <String, dynamic>{
      'def': instance.def.map((e) => e.toJson()).toList(),
    };

ContextDef _$ContextDefFromJson(Map<String, dynamic> json) => ContextDef(
      name: json['name'] as String,
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

Map<String, dynamic> _$ContextDefToJson(ContextDef instance) {
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
  return val;
}
