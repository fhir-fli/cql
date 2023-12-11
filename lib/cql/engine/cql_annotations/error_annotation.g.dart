// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_annotation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorAnnotation _$ErrorAnnotationFromJson(Map<String, dynamic> json) =>
    ErrorAnnotation(
      librarySystem: json['librarySystem'] as String?,
      libraryId: json['libraryId'] as String?,
      startLine: json['startLine'] as int?,
      startChar: json['startChar'] as int?,
      endLine: json['endLine'] as int?,
      endChar: json['endChar'] as int?,
      message: json['message'] as String?,
      errorType: json['errorType'] as String?,
      errorSeverity: json['errorSeverity'] as String?,
      type: json['type'] as String? ?? 'CqlToElmError',
    );

Map<String, dynamic> _$ErrorAnnotationToJson(ErrorAnnotation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('librarySystem', instance.librarySystem);
  writeNotNull('libraryId', instance.libraryId);
  writeNotNull('startLine', instance.startLine);
  writeNotNull('startChar', instance.startChar);
  writeNotNull('endLine', instance.endLine);
  writeNotNull('endChar', instance.endChar);
  writeNotNull('message', instance.message);
  writeNotNull('errorType', instance.errorType);
  writeNotNull('errorSeverity', instance.errorSeverity);
  writeNotNull('type', instance.type);
  return val;
}
