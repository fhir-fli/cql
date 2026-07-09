import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlReferentialOrTypeNameIdentifierVisitor extends CqlBaseVisitor<String> {
  CqlReferentialOrTypeNameIdentifierVisitor(super.library);

  @override
  String visitReferentialOrTypeNameIdentifier(
    ReferentialOrTypeNameIdentifierContext ctx,
  ) {
    printIf(ctx);
    final thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        return visitReferentialIdentifier(child);
      } else if (child is TypeNameIdentifierContext) {
        return visitTypeNameIdentifier(child);
      }
    }
    throw ArgumentError('$thisNode Invalid ReferentialOrTypeNameIdentifier');
  }
}
