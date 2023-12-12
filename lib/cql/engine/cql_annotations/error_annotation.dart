import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'error_annotation.g.dart';

@JsonSerializable()
class ErrorAnnotation extends Annotation {
  final String? librarySystem;
  final String? libraryId;
  final String? libraryVersion;
  final int? startLine;
  final int? startChar;
  final int? endLine;
  final int? endChar;
  final String? message;
  final String? errorType;
  final String? errorSeverity;
  final String? type;

  ErrorAnnotation({
    this.librarySystem,
    this.libraryId,
    this.libraryVersion,
    this.startLine,
    this.startChar,
    this.endLine,
    this.endChar,
    this.message,
    this.errorType,
    this.errorSeverity,
    this.type = 'CqlToElmError',
  });

  factory ErrorAnnotation.fromJson(Map<String, dynamic> json) =>
      _$ErrorAnnotationFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorAnnotationToJson(this);

  ErrorAnnotation copyWith({
    String? librarySystem,
    String? libraryId,
    String? libraryVersion,
    int? startLine,
    int? startChar,
    int? endLine,
    int? endChar,
    String? message,
    String? errorType,
    String? errorSeverity,
    String? type,
  }) {
    return ErrorAnnotation(
      librarySystem: librarySystem ?? this.librarySystem,
      libraryId: libraryId ?? this.libraryId,
      libraryVersion: libraryVersion ?? this.libraryVersion,
      startLine: startLine ?? this.startLine,
      startChar: startChar ?? this.startChar,
      endLine: endLine ?? this.endLine,
      endChar: endChar ?? this.endChar,
      message: message ?? this.message,
      errorType: errorType ?? this.errorType,
      errorSeverity: errorSeverity ?? this.errorSeverity,
      type: type ?? this.type,
    );
  }
}
