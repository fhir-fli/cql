import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlStatementVisitor extends CqlBaseVisitor<void> {
  CqlStatementVisitor(super.library);

  @override
  void visitStatement(StatementContext ctx) {
    printIf(ctx);
    ExpressionDef? statement;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionDefinitionContext) {
        statement = visitExpressionDefinition(child);
      }
      if (child is ContextDefinitionContext) {
        visitContextDefinition(child);
      } else if (child is FunctionDefinitionContext) {
        statement = visitFunctionDefinition(child);
      }
    }
    if (statement != null) {
      library.statements ??= ExpressionDefs();
      library.statements!.def.add(statement);
      // Record the define's result type so later expressions referencing it
      // (e.g. as a query source) infer their types model-driven.
      final model = currentModel;
      final expression = statement.expression;
      if (model != null && expression != null) {
        CqlBaseVisitor.registerDefineType(
          library,
          statement.name,
          inferType(expression, model),
        );
      }
    }
  }
}
