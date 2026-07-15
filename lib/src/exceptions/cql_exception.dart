import 'package:cql/src/internal.dart';
import 'package:meta/meta.dart';

/// The general-purpose exception raised when CQL translation or evaluation
/// fails.
///
/// A [CqlException] bundles a human-readable [message] (or an underlying
/// [cause] exception), an optional [SourceLocator] pinpointing the position in
/// the CQL/ELM source that triggered the problem, and a [Severity] classifying
/// how serious the diagnostic is (defaulting to [Severity.error]). This mirrors
/// the diagnostic model used by the reference CQL translator.
@immutable
class CqlException implements Exception {
  // Constructors

  /// Creates a [CqlException] with an explicit [message].
  ///
  /// [cause] optionally wraps an underlying exception, [sourceLocator] marks
  /// where in the source the problem occurred, and [severity] classifies the
  /// diagnostic (defaults to [Severity.error] when omitted).
  const CqlException({
    required this.message,
    this.cause,
    this.sourceLocator,
    Severity? severity,
  }) : severity = severity ?? Severity.error;

  /// Creates a [CqlException] that wraps an underlying [cause] exception,
  /// leaving [message] null.
  const CqlException.fromCause(
    Exception cause, {
    SourceLocator? sourceLocator,
    Severity? severity,
  }) : this(
          message: null,
          cause: cause,
          sourceLocator: sourceLocator,
          severity: severity,
        );

  /// Creates a [CqlException] with a [message] anchored to the given
  /// [sourceLocator].
  const CqlException.withSourceLocator(
    String message,
    SourceLocator sourceLocator, {
    Severity? severity,
  }) : this(
          message: message,
          sourceLocator: sourceLocator,
          severity: severity,
        );

  /// Creates a [CqlException] with a [message] and an explicit [severity],
  /// optionally anchored to a [sourceLocator].
  const CqlException.withSeverity(
    String message, {
    required Severity severity,
    SourceLocator? sourceLocator,
  }) : this(
          message: message,
          sourceLocator: sourceLocator,
          severity: severity,
        );

  /// The human-readable description of the problem, or null when the exception
  /// is defined solely by its [cause].
  final String? message;

  /// The underlying exception that triggered this one, if any.
  final Exception? cause;

  /// The position in the CQL/ELM source that this diagnostic refers to, if
  /// known.
  final SourceLocator? sourceLocator;

  /// How serious this diagnostic is; defaults to [Severity.error].
  final Severity severity;

  // Getter for message to mimic Java's getMessage method
  String? get getMessage => message;

  Map<String, dynamic> toJson() {
    return {
      if (message != null) 'message': message,
      if (cause != null) 'cause': cause.toString(),
      if (sourceLocator != null) 'sourceLocator': sourceLocator!.toJson(),
      'severity': severity.toString(),
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CqlException) return false;

    return message == other.message &&
        cause == other.cause &&
        sourceLocator == other.sourceLocator &&
        severity == other.severity;
  }

  @override
  int get hashCode => Object.hash(message, cause, sourceLocator, severity);

  @override
  String toString() {
    var result = 'CqlException';
    if (message != null) {
      result += ': $message';
    }
    if (cause != null) {
      result += '\nCaused by: $cause';
    }
    if (sourceLocator != null) {
      result += '\nSource: $sourceLocator';
    }
    return result;
  }
}
