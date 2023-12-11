// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concept_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConceptDefs _$ConceptDefsFromJson(Map<String, dynamic> json) => ConceptDefs(
      concepts: (json['concepts'] as List<dynamic>?)
          ?.map((e) => ConceptDef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConceptDefsToJson(ConceptDefs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('concepts', instance.concepts?.map((e) => e.toJson()).toList());
  return val;
}

ConceptDef _$ConceptDefFromJson(Map<String, dynamic> json) => ConceptDef(
      code: (json['code'] as List<dynamic>)
          .map((e) => CodeRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      display: json['display'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.Public,
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

Map<String, dynamic> _$ConceptDefToJson(ConceptDef instance) {
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
  val['code'] = instance.code.map((e) => e.toJson()).toList();
  val['name'] = instance.name;
  writeNotNull('display', instance.display);
  val['accessLevel'] = _$AccessModifierEnumMap[instance.accessLevel]!;
  return val;
}

const _$AccessModifierEnumMap = {
  AccessModifier.Public: 'Public',
  AccessModifier.Private: 'Private',
};
