import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlParameterDefinitionVisitor extends CqlBaseVisitor<void> {
  CqlParameterDefinitionVisitor(super.library);

  @override
  void visitParameterDefinition(ParameterDefinitionContext ctx) {
    printIf(ctx);
    var name = '';
    TypeSpecifierExpression? typeSpecifier;
    var accessLevel = AccessModifier.public;
    CqlExpression? defaultExpression;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      } else if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          defaultExpression = result;
        }
      }
    }
    if (typeSpecifier != null) {
      library.parameters ??= ParameterDefs();
      library.parameters!.def.add(
        ParameterDef(
          name: name,
          parameterTypeSpecifier: typeSpecifier,
          accessLevel: accessLevel,
          defaultExpression: defaultExpression,
        ),
      );
    }
  }
}
