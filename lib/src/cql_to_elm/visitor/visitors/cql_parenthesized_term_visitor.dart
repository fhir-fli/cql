import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlParenthesizedTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlParenthesizedTermVisitor(super.library);

  @override
  dynamic visitParenthesizedTerm(ParenthesizedTermContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        return byContext(child);
      }
    }
    throw ArgumentError('$thisNode Invalid ParenthesizedTerm');
  }
}
