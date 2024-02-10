import '../cql.dart';

class CqlCompilerException implements Exception {
  final Object? cause;
  final TrackBack? locator;
  final String message;
  final ErrorSeverity severity;

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

  @override
  String toString() {
    return 'CqlCompilerException: $message\n'
        'Severity: $severity\n'
        'Locator: $locator';
  }

  static bool hasErrors(List<CqlCompilerException> exceptions) {
    return exceptions
        .any((exception) => exception.severity == ErrorSeverity.error);
  }
}
