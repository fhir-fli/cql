import 'package:cql/src/internal.dart';

/// Represents the CqlToElmError type
class CqlToElmError extends Locator {
  CqlToElmError({
    required this.message,
    required this.errorType,
    super.librarySystem,
    super.libraryId,
    super.libraryVersion,
    this.errorSeverity,
    this.targetIncludeLibrarySystem,
    this.targetIncludeLibraryId,
    this.targetIncludeLibraryVersionId,
    super.startLine,
    super.startChar,
    super.endLine,
    super.endChar,
  });

  factory CqlToElmError.fromJson(Map<String, dynamic> json) {
    return CqlToElmError(
      librarySystem: json['librarySystem'] as String?,
      libraryId: json['libraryId'] as String?,
      libraryVersion: json['libraryVersion'] as String?,
      startLine: json['startLine'] as int?,
      startChar: json['startChar'] as int?,
      endLine: json['endLine'] as int?,
      endChar: json['endChar'] as int?,
      message: json['message'] as String,
      errorType: ErrorTypeExtension.fromJson(json['errorType'] as String),
      errorSeverity: json['errorSeverity'] != null
          ? ErrorSeverityExtension.fromJson(json['errorSeverity'] as String)
          : null,
      targetIncludeLibrarySystem: json['targetIncludeLibrarySystem'] as String?,
      targetIncludeLibraryId: json['targetIncludeLibraryId'] as String?,
      targetIncludeLibraryVersionId:
          json['targetIncludeLibraryVersionId'] as String?,
    );
  }

  /// errorSeverity attribute
  ErrorSeverity? errorSeverity;

  /// errorType attribute
  ErrorType errorType;

  /// message attribute
  String message;

  /// targetIncludeLibraryId attribute
  String? targetIncludeLibraryId;

  ///The namespace uri of the included library
  String? targetIncludeLibrarySystem;

  /// targetIncludeLibraryVersionId attribute
  String? targetIncludeLibraryVersionId;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      if (librarySystem != null) 'librarySystem': librarySystem,
      if (libraryId != null) 'libraryId': libraryId,
      if (libraryVersion != null) 'libraryVersion': libraryVersion,
      if (startLine != null) 'startLine': startLine,
      if (startChar != null) 'startChar': startChar,
      if (endLine != null) 'endLine': endLine,
      if (endChar != null) 'endChar': endChar,
      'message': message,
      'errorType': errorType.toJson(),
      if (errorSeverity != null) 'errorSeverity': errorSeverity!.toJson(),
      if (targetIncludeLibraryId != null)
        'targetIncludeLibraryId': targetIncludeLibraryId,
      if (targetIncludeLibrarySystem != null)
        'targetIncludeLibrarySystem': targetIncludeLibrarySystem,
      if (targetIncludeLibraryVersionId != null)
        'targetIncludeLibraryVersionId': targetIncludeLibraryVersionId,
      'type': type,
    };
    return data;
  }

  String get type => 'CqlToElmError';
}
