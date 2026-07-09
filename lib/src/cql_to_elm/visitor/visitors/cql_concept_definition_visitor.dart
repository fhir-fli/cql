import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlConceptDefinitionVisitor extends CqlBaseVisitor<void> {
  CqlConceptDefinitionVisitor(super.library);

  @override
  dynamic visitConceptDefinition(ConceptDefinitionContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    var accessLevel = AccessModifier.public;
    String? name;
    String? display;
    final code = <CodeRef>[];

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is CodeIdentifierContext) {
        code.add(visitCodeIdentifier(child));
      } else if (child is DisplayClauseContext) {
        display = visitDisplayClause(child);
      }
    }
    if (name != null) {
      library.concepts ??= ConceptDefs();
      library.concepts!.def.add(
        ConceptDef(
          name: name,
          display: display,
          code: code,
          accessLevel: accessLevel,
        ),
      );
    } else {
      throw ArgumentError('$thisNode Invalid ConceptDefinition');
    }
  }
}
