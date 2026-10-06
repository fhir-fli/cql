import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlExpressionDefinitionVisitor extends CqlBaseVisitor<ExpressionDef> {
  CqlExpressionDefinitionVisitor(super.library);

  @override
  ExpressionDef visitExpressionDefinition(ExpressionDefinitionContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    var accessLevel = AccessModifier.public;
    String? name;
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else {
        expression = _translateBody(ctx, child, name);
      }
    }
    if (name != null) {
      return ExpressionDef(
        name: name,
        context: library.contexts != null && library.contexts!.def.isNotEmpty
            ? library.contexts!.def.first.name
            : 'Unfiltered',
        expression: expression,
        accessLevel: accessLevel,
      );
    }
    throw ArgumentError('$thisNode Invalid ExpressionDefinition');
  }

  /// A define the parser could not read whole (a syntax error inside its
  /// lines, already on the library from ElmErrorListener) leaves a parse
  /// tree the visitors were not written for, and until 2026-10-06 whatever
  /// one of them threw ended the translation of the whole library
  /// (CqlDateTimeOperatorsTest.cql: `timezone from …`, `@T06Z`). Such a
  /// define is Null, with an error naming it; a throw anywhere else is a
  /// defect and still surfaces.
  CqlExpression? _translateBody(
    ExpressionDefinitionContext ctx,
    ParseTree child,
    String? name,
  ) {
    try {
      final result = byContext(child);
      return result is CqlExpression ? result : null;
    } catch (e) {
      if (!syntaxErrorWithin(ctx)) rethrow;
      return translationError(
        ctx,
        'define "$name" was not translated, it has a syntax error: $e',
        errorType: ErrorType.syntax,
      );
    }
  }
}
