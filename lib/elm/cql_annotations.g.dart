// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cql_annotations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CqlToElmBase _$CqlToElmBaseFromJson(Map<String, dynamic> json) =>
    CqlToElmBase();

Map<String, dynamic> _$CqlToElmBaseToJson(CqlToElmBase instance) =>
    <String, dynamic>{};

Annotation _$AnnotationFromJson(Map<String, dynamic> json) => Annotation(
      s: json['s'] == null
          ? null
          : Narrative.fromJson(json['s'] as Map<String, dynamic>),
      locator: json['locator'] == null
          ? null
          : Locator.fromJson(json['locator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnnotationToJson(Annotation instance) =>
    <String, dynamic>{
      's': instance.s,
      'locator': instance.locator,
    };

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

Locator _$LocatorFromJson(Map<String, dynamic> json) => Locator(
      startLine: json['startLine'] as int?,
      startChar: json['startChar'] as int?,
      endLine: json['endLine'] as int?,
      endChar: json['endChar'] as int?,
    );

Map<String, dynamic> _$LocatorToJson(Locator instance) => <String, dynamic>{
      'startLine': instance.startLine,
      'startChar': instance.startChar,
      'endLine': instance.endLine,
      'endChar': instance.endChar,
    };

Narrative _$NarrativeFromJson(Map<String, dynamic> json) => Narrative(
      s: (json['s'] as List<dynamic>?)
          ?.map((e) => Narrative.fromJson(e as Map<String, dynamic>))
          .toList(),
      r: json['r'] as String?,
    );

Map<String, dynamic> _$NarrativeToJson(Narrative instance) => <String, dynamic>{
      's': instance.s,
      'r': instance.r,
    };

CqlToElmError _$CqlToElmErrorFromJson(Map<String, dynamic> json) =>
    CqlToElmError(
      message: json['message'] as String,
      errorType: $enumDecodeNullable(_$ErrorTypeEnumMap, json['errorType']) ??
          ErrorType.internal,
      errorSeverity:
          $enumDecodeNullable(_$ErrorSeverityEnumMap, json['errorSeverity']) ??
              ErrorSeverity.error,
      targetIncludeLibraryId: json['targetIncludeLibraryId'] as String?,
      targetIncludeLibraryVersionId:
          json['targetIncludeLibraryVersionId'] as String?,
    )
      ..startLine = json['startLine'] as int?
      ..startChar = json['startChar'] as int?
      ..endLine = json['endLine'] as int?
      ..endChar = json['endChar'] as int?;

Map<String, dynamic> _$CqlToElmErrorToJson(CqlToElmError instance) =>
    <String, dynamic>{
      'startLine': instance.startLine,
      'startChar': instance.startChar,
      'endLine': instance.endLine,
      'endChar': instance.endChar,
      'message': instance.message,
      'errorType': _$ErrorTypeEnumMap[instance.errorType]!,
      'errorSeverity': _$ErrorSeverityEnumMap[instance.errorSeverity],
      'targetIncludeLibraryId': instance.targetIncludeLibraryId,
      'targetIncludeLibraryVersionId': instance.targetIncludeLibraryVersionId,
    };

const _$ErrorTypeEnumMap = {
  ErrorType.environment: 'environment',
  ErrorType.syntax: 'syntax',
  ErrorType.include: 'include',
  ErrorType.semantic: 'semantic',
  ErrorType.internal: 'internal',
};

const _$ErrorSeverityEnumMap = {
  ErrorSeverity.info: 'info',
  ErrorSeverity.warning: 'warning',
  ErrorSeverity.error: 'error',
};

CqlToElmInfo _$CqlToElmInfoFromJson(Map<String, dynamic> json) => CqlToElmInfo(
      translatorVersion: json['translatorVersion'] as String?,
      translatorOptions: json['translatorOptions'] as String?,
    );

Map<String, dynamic> _$CqlToElmInfoToJson(CqlToElmInfo instance) =>
    <String, dynamic>{
      'translatorVersion': instance.translatorVersion,
      'translatorOptions': instance.translatorOptions,
    };
