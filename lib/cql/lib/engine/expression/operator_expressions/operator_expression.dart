import '../../../cql.dart';

/// Abstract base class for all built-in operators used in the ELM expression
/// language.
abstract class OperatorExpression extends Expression {
  /// Declared signature of the operator or function being called.
  List<TypeSpecifier>? signature;

  OperatorExpression({this.signature});

  factory OperatorExpression.fromJson(Map<String, dynamic> json);
}
