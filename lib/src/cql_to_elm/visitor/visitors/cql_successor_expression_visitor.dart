import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlSuccessorExpressionTermVisitor extends CqlBaseVisitor<Successor> {
  CqlSuccessorExpressionTermVisitor(super.library);

  @override
  Successor visitSuccessorExpressionTerm(SuccessorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? expressionTerm;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        expressionTerm = byContext(child);
      }
    }
    if (expressionTerm != null) {
      return Successor(operand: expressionTerm);
    }
    throw ArgumentError('$thisNode Invalid SuccessorExpressionTerm');
  }
}
