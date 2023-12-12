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
    );

Map<String, dynamic> _$ContextDefToJson(ContextDef instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
