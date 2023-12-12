import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'cql_to_elm_error.g.dart';

/// Enum representing the severity of an error
enum ErrorSeverity { info, warning, error }

/// Enum representing different types of errors
enum ErrorType {
  environment,
  syntax,
  include,
  semantic,
  internal,
}

/// Represents the CqlToElmError type
@JsonSerializable()
class CqlToElmError extends Locator {
  /// message attribute
  String message;

  /// errorType attribute
  ErrorType errorType;

  /// errorSeverity attribute
  ErrorSeverity? errorSeverity;

  /// targetIncludeLibraryId attribute
  String? targetIncludeLibraryId;

  /// targetIncludeLibraryVersionId attribute
  String? targetIncludeLibraryVersionId;

  CqlToElmError({
    required this.message,
    required this.errorType,
    this.errorSeverity,
    this.targetIncludeLibraryId,
    this.targetIncludeLibraryVersionId,
    int? startLine,
    int? startChar,
    int? endLine,
    int? endChar,
  }) : super(
          startLine: startLine,
          startChar: startChar,
          endLine: endLine,
          endChar: endChar,
        );

  factory CqlToElmError.fromJson(Map<String, dynamic> json) =>
      _$CqlToElmErrorFromJson(json);

  Map<String, dynamic> toJson() => _$CqlToElmErrorToJson(this);
}
