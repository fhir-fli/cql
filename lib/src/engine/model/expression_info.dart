class ExpressionInfo {
  ExpressionInfo({
    required this.expression,
    required this.language,
  });

  factory ExpressionInfo.fromJson(Map<String, dynamic> json) {
    return ExpressionInfo(
      expression: json['expression'] as String,
      language: json['language'] as String,
    );
  }
  // The actual expression in a specific language
  final String expression;

  // The language identifier for the expression
  final String language;

  @override
  String toString() {
    return 'ExpressionInfo{expression: $expression, language: $language}';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['expression'] = expression;
    data['language'] = language;
    return data;
  }
}
