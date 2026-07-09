import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlConceptSelectorVisitor extends CqlBaseVisitor<Concept> {
  CqlConceptSelectorVisitor(super.library);

  @override
  Concept visitConceptSelector(ConceptSelectorContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    String? display;
    final code = <Code>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is CodeSelectorContext) {
        code.add(visitCodeSelector(child));
      } else if (child is DisplayClauseContext) {
        display = visitDisplayClause(child);
      }
    }
    if (code.isNotEmpty) {
      return Concept(code: code, display: display);
    }
    throw ArgumentError('$thisNode Invalid ConceptSelector');
  }
}
