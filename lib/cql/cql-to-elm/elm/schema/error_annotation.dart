import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'error_annotation.g.dart';

@JsonSerializable()
class ErrorAnnotation extends Annotation {
  final String? librarySystem;
  final String? libraryId;
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
}
