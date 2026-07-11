import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlReferentialIdentifierVisitor extends CqlBaseVisitor<String> {
  CqlReferentialIdentifierVisitor(super.library);

  @override
  String visitReferentialIdentifier(ReferentialIdentifierContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        return visitIdentifier(child);
      } else if (child is KeywordIdentifierContext) {
        return visitKeywordIdentifier(child) as String;
      }
    }
    throw ArgumentError('$thisNode Invalid ReferentialIdentifier');
  }
}
