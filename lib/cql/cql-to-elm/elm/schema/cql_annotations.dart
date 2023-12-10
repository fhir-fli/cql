/// Represents the Annotation type
class Annotation {
  /// Narrative element
  Narrative? s;

  /// Locator element
  Locator? locator;

  Annotation({this.s, this.locator});
}

/// Represents the Locator type
class Locator {
  /// startLine attribute
  int? startLine;

  /// startChar attribute
  int? startChar;

  /// endLine attribute
  int? endLine;

  /// endChar attribute
  int? endChar;

  Locator({this.startLine, this.startChar, this.endLine, this.endChar});
}

/// Represents the Narrative type with mixed content
class Narrative {
  /// r attribute
  String? r;

  /// Nested Narrative elements
  List<Narrative>? s;

  Narrative({this.r, this.s});
}

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
}

/// Represents the CqlToElmInfo type
class CqlToElmInfo {
  /// translatorVersion attribute
  String? translatorVersion;

  /// translatorOptions attribute
  String? translatorOptions;

  CqlToElmInfo({this.translatorVersion, this.translatorOptions});
}
