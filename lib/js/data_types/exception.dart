class CustomException implements Exception {
  final String message;
  final dynamic wrapped;

  CustomException(this.message, this.wrapped);

  @override
  String toString() {
    return 'CustomException: $message';
  }
}
