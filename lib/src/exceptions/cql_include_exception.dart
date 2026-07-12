/// Raised when a CQL `include` declaration cannot be resolved.
///
/// CQL libraries reference other libraries via `include` statements; when the
/// named library cannot be located or loaded, this exception records the
/// failure along with the identifying triple ([librarySystem], [libraryId],
/// [versionId]) of the library that could not be included.
class CqlIncludeException implements Exception {
  /// Creates a [CqlIncludeException] describing a failed `include` of the
  /// library identified by [librarySystem], [libraryId], and [versionId].
  CqlIncludeException(
    this.message,
    this.librarySystem,
    this.libraryId,
    this.versionId,
  );

  /// Creates a [CqlIncludeException] for an `include` failure attributed to an
  /// underlying cause.
  CqlIncludeException.withCause(
    this.message,
    this.librarySystem,
    this.libraryId,
    this.versionId,
  );

  /// The identifier (name) of the library that could not be included.
  final String libraryId;

  /// The namespace/system URI qualifying [libraryId].
  final String librarySystem;

  /// The human-readable description of the include failure.
  final String message;

  /// The version of the library that could not be included.
  final String versionId;

  @override
  String toString() {
    return 'CqlIncludeException: $message\n'
        'Library System: $librarySystem\n'
        'Library ID: $libraryId\n'
        'Version ID: $versionId';
  }
}
