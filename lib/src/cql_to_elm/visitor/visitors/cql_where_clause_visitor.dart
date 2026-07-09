import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlWhereClauseVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlWhereClauseVisitor(super.library);

  @override
  CqlExpression visitWhereClause(WhereClauseContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        return byContext(child);
      }
    }
    throw ArgumentError('$thisNode Invalid WhereClause');
  }
}
