import '../cql-to-elm/cql_to_elm.dart';

class CqlCompilerException implements Exception {
  final String message;
  final ErrorSeverity severity;
  final TrackBack? locator;
  final Object? cause;

  CqlCompilerException(
    this.message,
    this.severity,
    this.locator, {
    this.cause,
  });

  CqlCompilerException.withCause(
    this.message,
    this.severity,
    this.locator,
    this.cause,
  );

  static bool hasErrors(List<CqlCompilerException> exceptions) {
    return exceptions
        .any((exception) => exception.severity == ErrorSeverity.error);
  }

  @override
  String toString() {
    return 'CqlCompilerException: $message\n'
        'Severity: $severity\n'
        'Locator: $locator';
  }
}
