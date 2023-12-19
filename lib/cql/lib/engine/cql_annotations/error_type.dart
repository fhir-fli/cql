/// Enum representing different types of errors
enum ErrorType {
  environment,
  syntax,
  include,
  semantic,
  internal,
}

extension ErrorTypeToJson on ErrorType {
  String toJson() => toString();
}
