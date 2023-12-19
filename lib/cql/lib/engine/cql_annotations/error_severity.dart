/// Enum representing the severity of an error
enum ErrorSeverity { info, warning, error }

extension ErrorSeverityToJson on ErrorSeverity {
  String toJson() => toString();
}
