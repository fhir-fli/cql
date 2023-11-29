// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionedIdentifier _$VersionedIdentifierFromJson(Map<String, dynamic> json) =>
    VersionedIdentifier(
      id: json['id'] as String,
      system: json['system'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$VersionedIdentifierToJson(
        VersionedIdentifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'system': instance.system,
      'version': instance.version,
    };

UsingDef _$UsingDefFromJson(Map<String, dynamic> json) => UsingDef(
      localIdentifier: json['localIdentifier'] as String,
      uri: json['uri'] as String,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$UsingDefToJson(UsingDef instance) => <String, dynamic>{
      'localIdentifier': instance.localIdentifier,
      'uri': instance.uri.toString(),
      'version': instance.version,
    };

IncludeDef _$IncludeDefFromJson(Map<String, dynamic> json) => IncludeDef(
      localIdentifier: json['localIdentifier'] as String,
      mediaType: json['mediaType'] as String?,
      path: json['path'] as String,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$IncludeDefToJson(IncludeDef instance) =>
    <String, dynamic>{
      'localIdentifier': instance.localIdentifier,
      'mediaType': instance.mediaType.toString(),
      'path': instance.path.toString(),
      'version': instance.version,
    };

ContextDef _$ContextDefFromJson(Map<String, dynamic> json) => ContextDef(
      name: json['name'] as String,
    );

Map<String, dynamic> _$ContextDefToJson(ContextDef instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

ElmLibrary _$ElmLibraryFromJson(Map<String, dynamic> json) => ElmLibrary(
      identifier: VersionedIdentifier.fromJson(
          json['identifier'] as Map<String, dynamic>),
      schemaIdentifier: VersionedIdentifier.fromJson(
          json['schemaIdentifier'] as Map<String, dynamic>),
      usings: json['usings'] == null
          ? null
          : UsingDef.fromJson(json['usings'] as Map<String, dynamic>),
      includes: json['includes'] == null
          ? null
          : IncludeDef.fromJson(json['includes'] as Map<String, dynamic>),
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
      contexts: (json['contexts'] as List<dynamic>?)
          ?.map((e) => ContextDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      statements: (json['statements'] as List<dynamic>?)
          ?.map((e) => ExpressionDef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ElmLibraryToJson(ElmLibrary instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'schemaIdentifier': instance.schemaIdentifier,
      'usings': instance.usings,
      'includes': instance.includes,
      'parameters': instance.parameters,
      'codeSystems': instance.codeSystems,
      'valueSets': instance.valueSets,
      'codes': instance.codes,
      'concepts': instance.concepts,
      'contexts': instance.contexts,
      'statements': instance.statements,
    };
