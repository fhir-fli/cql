import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlCaseExpressionItemVisitor extends CqlBaseVisitor<CaseItem> {
  CqlCaseExpressionItemVisitor(super.library);

  @override
  CaseItem visitCaseExpressionItem(CaseExpressionItemContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    CqlExpression? when_;
    CqlExpression? then;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionContext) {
        if (when_ == null) {
          when_ = byContext(child) as CqlExpression?;
        } else {
          then = byContext(child) as CqlExpression?;
        }
      }
    }
    if (when_ != null && then != null) {
      return CaseItem(when_: when_, then: then);
    }
    throw ArgumentError('$thisNode Invalid CaseExpressionItem');
  }
}
