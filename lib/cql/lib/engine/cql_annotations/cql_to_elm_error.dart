import '../../cql.dart';

/// Represents the CqlToElmError type
class CqlToElmError extends Locator {
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

  CqlToElmError({
    required this.message,
    required this.errorType,
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
      message: json['message'],
      errorType: ErrorTypeExtension.fromJson(json['errorType']),
      errorSeverity: json['errorSeverity'] != null
          ? ErrorSeverityExtension.fromJson(json['errorSeverity'])
          : null,
      targetIncludeLibrarySystem: json['targetIncludeLibrarySystem'],
      targetIncludeLibraryId: json['targetIncludeLibraryId'],
      targetIncludeLibraryVersionId: json['targetIncludeLibraryVersionId'],
      startLine: json['startLine'],
      startChar: json['startChar'],
      endLine: json['endLine'],
      endChar: json['endChar'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'message': message,
      'errorType': errorType.toJson(),
    };
    if (errorSeverity != null) {
      data['errorSeverity'] = errorSeverity!.toJson();
    }
    if (targetIncludeLibrarySystem != null) {
      data['targetIncludeLibrarySystem'] = targetIncludeLibrarySystem;
    }
    if (targetIncludeLibraryId != null) {
      data['targetIncludeLibraryId'] = targetIncludeLibraryId;
    }
    if (targetIncludeLibraryVersionId != null) {
      data['targetIncludeLibraryVersionId'] = targetIncludeLibraryVersionId;
    }
    if (startLine != null) {
      data['startLine'] = startLine;
    }
    if (startChar != null) {
      data['startChar'] = startChar;
    }
    if (endLine != null) {
      data['endLine'] = endLine;
    }
    if (endChar != null) {
      data['endChar'] = endChar;
    }
    return data;
  }
}
