import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlQualifierVisitor extends CqlBaseVisitor<String> {
  CqlQualifierVisitor(super.library);

  @override
  String visitQualifier(QualifierContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        return visitIdentifier(child);
      }
    }
    throw ArgumentError('$thisNode Invalid Qualifier');
  }
}
