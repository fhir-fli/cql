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
      parameters: json['parameters'] == null
          ? null
          : ParameterDefs.fromJson(json['parameters'] as Map<String, dynamic>),
      codeSystems: json['codeSystems'] == null
          ? null
          : CodeSystemDefs.fromJson(
              json['codeSystems'] as Map<String, dynamic>),
      valueSets: json['valueSets'] == null
          ? null
          : ValueSetDefs.fromJson(json['valueSets'] as Map<String, dynamic>),
      codes: json['codes'] == null
          ? null
          : CodeDefs.fromJson(json['codes'] as Map<String, dynamic>),
      defines: json['defines'] == null
          ? null
          : ExpressionDefs.fromJson(json['defines'] as Map<String, dynamic>),
      functions: json['functions'] == null
          ? null
          : FunctionDefs.fromJson(json['functions'] as Map<String, dynamic>),
      concepts: json['concepts'] == null
          ? null
          : ConceptDefs.fromJson(json['concepts'] as Map<String, dynamic>),
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

Map<String, dynamic> _$LibraryToJson(Library instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('schemaIdentifier', instance.schemaIdentifier?.toJson());
  writeNotNull('usings', instance.usings?.toJson());
  writeNotNull('includes', instance.includes?.toJson());
  writeNotNull('parameters', instance.parameters?.toJson());
  writeNotNull('codeSystems', instance.codeSystems?.toJson());
  writeNotNull('valueSets', instance.valueSets?.toJson());
  writeNotNull('codes', instance.codes?.toJson());
  writeNotNull('defines', instance.defines?.toJson());
  writeNotNull('functions', instance.functions?.toJson());
  writeNotNull('concepts', instance.concepts?.toJson());
  return val;
}
