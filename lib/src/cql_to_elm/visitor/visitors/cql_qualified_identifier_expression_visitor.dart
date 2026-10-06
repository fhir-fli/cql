import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlQualifiedIdentifierExpressionVisitor
    extends CqlBaseVisitor<CqlExpression> {
  CqlQualifiedIdentifierExpressionVisitor(super.library);

  @override
  CqlExpression visitQualifiedIdentifierExpression(
    QualifiedIdentifierExpressionContext ctx,
  ) {
    printIf(ctx);
    final thisNode = getNextNode();
    String? name;
    String? libraryName;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifierContext) {
        libraryName = visitQualifier(child);
      } else if (child is QualifierExpressionContext) {
        // qualifiedIdentifierExpression uses qualifierExpression (not
        // qualifier)
        // Extract the identifier text from the qualifierExpression child.
        for (final qChild in child.children ?? <ParseTree>[]) {
          if (qChild is ReferentialIdentifierContext) {
            libraryName = visitReferentialIdentifier(qChild);
          }
        }
      } else if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      }
    }
    if (name != null) {
      // `a.b` where `a` is a function operand, a query alias, a let, a
      // define or a parameter is a Property over that reference, not an
      // identifier in a library called `a`. The reference writes
      // `medicationRequest.category` inside a function (QICoreCommon
      // isCommunity) as Property path=category source=OperandRef; until
      // 2026-10-06 this wrote IdentifierRef(libraryName: medicationRequest).
      // An included library's alias still resolves as a library reference.
      final qualifier = libraryName;
      if (qualifier != null &&
          library.includes?.def
                  .any((inc) => inc.localIdentifier == qualifier) !=
              true) {
        if (CqlBaseVisitor.isOperandInScope(qualifier)) {
          return _typed(
            Property(source: OperandRef(name: qualifier), path: name),
            CqlBaseVisitor.operandTypeOf(qualifier),
          );
        }
        if (CqlBaseVisitor.isLetIdentifier(qualifier)) {
          return _typed(
            Property(source: QueryLetRef(name: qualifier), path: name),
            CqlBaseVisitor.aliasType(qualifier),
          );
        }
        if (CqlBaseVisitor.isQueryAlias(qualifier)) {
          return _typed(
            Property(scope: qualifier, path: name),
            CqlBaseVisitor.aliasType(qualifier),
          );
        }
        if (library.parameters?.def.any((p) => p.name == qualifier) == true) {
          return Property(source: ParameterRef(name: qualifier), path: name);
        }
        if (library.statements?.def.any((d) => d.name == qualifier) == true) {
          return _typed(
            Property(source: ExpressionRef(name: qualifier), path: name),
            CqlBaseVisitor.defineResultType(library, qualifier),
          );
        }
      }
      return returnRef(name, libraryName);
    }
    throw ArgumentError('$thisNode Invalid QualifiedIdentifierExpression');
  }

  /// Records the property's declared element type (translator-internal)
  /// so the binding site that uses it can insert the model's conversion.
  Property _typed(Property property, String? sourceType) {
    final model = currentModel;
    if (model != null &&
        sourceType != null &&
        !sourceType.startsWith('List<')) {
      typeProperty(property, sourceType, model);
    }
    return property;
  }
}
