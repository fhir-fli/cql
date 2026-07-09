import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlPredecessorExpressionTermVisitor extends CqlBaseVisitor<Predecessor> {
  CqlPredecessorExpressionTermVisitor(super.library);

  @override
  Predecessor visitPredecessorExpressionTerm(
    PredecessorExpressionTermContext ctx,
  ) {
    printIf(ctx);
    final thisNode = getNextNode();
    CqlExpression? expressionTerm;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        expressionTerm = byContext(child);
      }
    }
    if (expressionTerm != null) {
      return Predecessor(operand: expressionTerm);
    }
    throw ArgumentError('$thisNode Invalid PredecessorExpressionTerm');
  }
}
