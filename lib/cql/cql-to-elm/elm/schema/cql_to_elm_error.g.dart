// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cql_to_elm_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CqlToElmError _$CqlToElmErrorFromJson(Map<String, dynamic> json) =>
    CqlToElmError(
      message: json['message'] as String,
      errorType: $enumDecode(_$ErrorTypeEnumMap, json['errorType']),
      errorSeverity:
          $enumDecodeNullable(_$ErrorSeverityEnumMap, json['errorSeverity']),
      targetIncludeLibraryId: json['targetIncludeLibraryId'] as String?,
      targetIncludeLibraryVersionId:
          json['targetIncludeLibraryVersionId'] as String?,
      startLine: json['startLine'] as int?,
      startChar: json['startChar'] as int?,
      endLine: json['endLine'] as int?,
      endChar: json['endChar'] as int?,
    );

Map<String, dynamic> _$CqlToElmErrorToJson(CqlToElmError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('startLine', instance.startLine);
  writeNotNull('startChar', instance.startChar);
  writeNotNull('endLine', instance.endLine);
  writeNotNull('endChar', instance.endChar);
  val['message'] = instance.message;
  val['errorType'] = _$ErrorTypeEnumMap[instance.errorType]!;
  writeNotNull('errorSeverity', _$ErrorSeverityEnumMap[instance.errorSeverity]);
  writeNotNull('targetIncludeLibraryId', instance.targetIncludeLibraryId);
  writeNotNull(
      'targetIncludeLibraryVersionId', instance.targetIncludeLibraryVersionId);
  return val;
}

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
