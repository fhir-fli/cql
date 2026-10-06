import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlContextIdentifierVisitor extends CqlBaseVisitor<Ref> {
  CqlContextIdentifierVisitor(super.library);

  @override
  Ref visitContextIdentifier(ContextIdentifierContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifiedIdentifierExpressionContext) {
        final ref = visitQualifiedIdentifierExpression(child);
        if (ref is Ref) return ref;
      }
    }
    throw ArgumentError('$thisNode Invalid ContextIdentifier');
  }
}
