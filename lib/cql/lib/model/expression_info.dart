class ExpressionInfo {
  // The actual expression in a specific language
  final String expression;

  // The language identifier for the expression
  final String language;

  ExpressionInfo({
    required this.expression,
    required this.language,
  });

  @override
  String toString() {
    return 'ExpressionInfo{expression: $expression, language: $language}';
  }
}
