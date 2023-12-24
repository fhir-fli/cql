/// Enum representing the severity of an error
enum ErrorSeverity { info, warning, error }

extension ErrorSeverityExtension on ErrorSeverity {
  String toJson() => toString();

  static ErrorSeverity fromJson(String json) {
    switch (json) {
      case 'info':
        return ErrorSeverity.info;
      case 'warning':
        return ErrorSeverity.warning;
      case 'error':
        return ErrorSeverity.error;
      default:
        throw ArgumentError.value(
            json, 'json', 'Invalid ErrorSeverity value: $json.');
    }
  }
}
