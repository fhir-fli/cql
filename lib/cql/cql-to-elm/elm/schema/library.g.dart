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
      usings: json['usings'] == null
          ? null
          : UsingDefs.fromJson(json['usings'] as Map<String, dynamic>),
      includes: json['includes'] == null
          ? null
          : IncludeDefs.fromJson(json['includes'] as Map<String, dynamic>),
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => ParameterDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      codeSystems: json['codeSystems'] == null
          ? null
          : CodeSystemDefs.fromJson(
              json['codeSystems'] as Map<String, dynamic>),
      valueSets: json['valueSets'] == null
          ? null
          : ValueSetDefs.fromJson(json['valueSets'] as Map<String, dynamic>),
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
  writeNotNull('usings', instance.usings?.toJson());
  writeNotNull('includes', instance.includes?.toJson());
  writeNotNull(
      'parameters', instance.parameters?.map((e) => e.toJson()).toList());
  writeNotNull('codeSystems', instance.codeSystems?.toJson());
  writeNotNull('valueSets', instance.valueSets?.toJson());
  writeNotNull('codes', instance.codes?.map((e) => e.toJson()).toList());
  writeNotNull('concepts', instance.concepts?.map((e) => e.toJson()).toList());
  writeNotNull(
      'statements', instance.statements?.map((e) => e.toJson()).toList());
  return val;
}
