import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlTupleElementDefinitionVisitor
    extends CqlBaseVisitor<TupleElementDefinition> {
  CqlTupleElementDefinitionVisitor(super.library);

  @override
  TupleElementDefinition visitTupleElementDefinition(
    TupleElementDefinitionContext ctx,
  ) {
    printIf(ctx);
    final thisNode = getNextNode();
    String? name;
    TypeSpecifierExpression? typeSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }
    if (name != null && typeSpecifier != null) {
      return TupleElementDefinition(elementType: typeSpecifier, name: name);
    } else {
      throw ArgumentError('$thisNode Invalid TupleElementDefinition');
    }
  }
}
