// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Library _$LibraryFromJson(Map<String, dynamic> json) => Library(
      identifier: json['identifier'] == null
          ? null
          : VersionedIdentifier.fromJson(
              json['identifier'] as Map<String, dynamic>),
      schemaIdentifier: json['schemaIdentifier'] == null
          ? null
          : VersionedIdentifier.fromJson(
              json['schemaIdentifier'] as Map<String, dynamic>),
      usings: (json['usings'] as List<dynamic>?)
          ?.map((e) => UsingDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      includes: (json['includes'] as List<dynamic>?)
          ?.map((e) => IncludeDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => ParameterDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      codeSystems: (json['codeSystems'] as List<dynamic>?)
          ?.map((e) => CodeSystemDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      valueSets: (json['valueSets'] as List<dynamic>?)
          ?.map((e) => ValueSetDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      codes: (json['codes'] as List<dynamic>?)
          ?.map((e) => CodeDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      concepts: (json['concepts'] as List<dynamic>?)
          ?.map((e) => ConceptDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      statements: (json['statements'] as List<dynamic>?)
          ?.map((e) => ExpressionDef.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..annotation = json['annotation'] as List<dynamic>?
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : ExpTypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>)
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] as String?;

Map<String, dynamic> _$LibraryToJson(Library instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('schemaIdentifier', instance.schemaIdentifier?.toJson());
  writeNotNull('usings', instance.usings?.map((e) => e.toJson()).toList());
  writeNotNull('includes', instance.includes?.map((e) => e.toJson()).toList());
  writeNotNull(
      'parameters', instance.parameters?.map((e) => e.toJson()).toList());
  writeNotNull(
      'codeSystems', instance.codeSystems?.map((e) => e.toJson()).toList());
  writeNotNull(
      'valueSets', instance.valueSets?.map((e) => e.toJson()).toList());
  writeNotNull('codes', instance.codes?.map((e) => e.toJson()).toList());
  writeNotNull('concepts', instance.concepts?.map((e) => e.toJson()).toList());
  writeNotNull(
      'statements', instance.statements?.map((e) => e.toJson()).toList());
  return val;
}
