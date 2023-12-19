import 'package:json_annotation/json_annotation.dart';

import '../cql.dart';

class ConstraintInfo {
  // Required attribute - Unique name of the constraint
  final String name;

  // Required attribute - Severity of the constraint (Info, Warning, Error)
  final ConstraintSeverity severity;

  // List of expressions for the constraint in different languages
  final List<ExpressionInfo> expressions;

  // Optional attribute - Description of the constraint
  final String? description;

  // Optional attribute - Message returned on constraint violation (templatable)
  final String? message;

  ConstraintInfo({
    required this.name,
    required this.severity,
    List<ExpressionInfo>? expressions,
    this.description,
    this.message,
  }) : expressions = expressions ?? [];

  void addExpression(ExpressionInfo expression) {
    expressions.add(expression);
  }

  @override
  String toString() {
    return 'ConstraintInfo{name: $name, severity: $severity, expressions: $expressions, description: $description, message: $message}';
  }
}

enum ConstraintSeverity {
  @JsonValue('info')
  info,
  @JsonValue('warning')
  warning,
  @JsonValue('error')
  error,
}
