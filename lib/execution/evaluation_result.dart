import '../cql.dart';

class EvaluationResult {
  Map<String, ExpressionResult> expressionResults;
  DebugResult? debugResult;

  EvaluationResult() : expressionResults = <String, ExpressionResult>{};

  ExpressionResult? forExpression(String expressionName) =>
      expressionResults[expressionName];
}
