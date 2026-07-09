import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlTupleTypeSpecifierVisitor extends CqlBaseVisitor<TupleTypeSpecifier> {
  CqlTupleTypeSpecifierVisitor(super.library);

  @override
  TupleTypeSpecifier visitTupleTypeSpecifier(TupleTypeSpecifierContext ctx) {
    printIf(ctx);
    final element = <TupleElementDefinition>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TupleElementDefinitionContext) {
        element.add(visitTupleElementDefinition(child));
      }
    }
    return TupleTypeSpecifier(element: element.isEmpty ? null : element);
  }
}
