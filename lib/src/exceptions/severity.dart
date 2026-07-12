/// The severity level classifying a CQL translation or evaluation diagnostic.
///
/// Diagnostics produced while parsing, translating, or evaluating CQL carry a
/// [Severity] indicating how they should be surfaced, ranging from informational
/// output through to fatal errors. See [CqlException.severity].
enum Severity {
  /// An informational diagnostic reported to the caller (non-blocking).
  report,

  /// A potential problem that does not prevent translation or evaluation.
  warning,

  /// A fatal problem that prevents successful translation or evaluation.
  error,

  /// Low-level trace/diagnostic output, typically for debugging.
  trace,

  /// A message emitted by the CQL logic itself (e.g. via the `Message`
  /// operator), rather than a translator-detected condition.
  message,
}

/// Convenience helpers for [Severity], providing stable name/index mappings.
extension SeverityExtension on Severity {
  static const Map<Severity, String> _names = {
    Severity.report: 'report',
    Severity.warning: 'warning',
    Severity.error: 'error',
    Severity.trace: 'trace',
    Severity.message: 'message',
  };

  String get name => _names[this] ?? 'unknown';

  /// Returns the [Severity] corresponding to [index] (0=report, 1=warning,
  /// 2=error, 3=trace, 4=message), throwing an [ArgumentError] for any other
  /// value.
  static Severity fromIndex(int index) {
    switch (index) {
      case 0:
        return Severity.report;
      case 1:
        return Severity.warning;
      case 2:
        return Severity.error;
      case 3:
        return Severity.trace;
      case 4:
        return Severity.message;
      default:
        throw ArgumentError('Invalid index for Severity enum');
    }
  }

  int get index {
    switch (this) {
      case Severity.report:
        return 0;
      case Severity.warning:
        return 1;
      case Severity.error:
        return 2;
      case Severity.trace:
        return 3;
      case Severity.message:
        return 4;
    }
  }

  String get category => runtimeType.toString();
}
