import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlInvocationExpressionTermVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlInvocationExpressionTermVisitor(super.library);

  @override
  CqlExpression visitInvocationExpressionTerm(
      InvocationExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    dynamic expressionTerm;
    dynamic qualifiedInvocation;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TermExpressionTermContext) {
        expressionTerm = visitTermExpressionTerm(child);
      } else if (child is InvocationExpressionTermContext) {
        expressionTerm = visitInvocationExpressionTerm(child);
      } else if (child is QualifiedInvocationContext) {
        if (child is QualifiedMemberInvocationContext) {
          qualifiedInvocation = visitQualifiedMemberInvocation(child);
        } else if (child is QualifiedFunctionInvocationContext) {
          qualifiedInvocation = visitQualifiedFunctionInvocation(child);
        }
      }
    }

    // Qualified function call: FHIRHelpers.ToDateTime(...) or fluent: 5.double()
    if (qualifiedInvocation is FunctionRef) {
      String? leftName;
      if (expressionTerm is ExpressionRef) {
        leftName = expressionTerm.name;
      } else if (expressionTerm is IdentifierRef) {
        leftName = expressionTerm.name;
      } else if (expressionTerm is Property) {
        leftName = expressionTerm.path;
      }

      // Check if the left-side name is a library include alias
      final isLibraryQualified = leftName != null &&
          library.includes?.def.any((inc) => inc.localIdentifier == leftName) ==
              true;

      if (isLibraryQualified) {
        // Library-qualified call: set libraryName (existing behavior)
        qualifiedInvocation.libraryName = leftName;
      } else {
        // Fluent or local call: prepend expressionTerm as first operand
        qualifiedInvocation.operand = [
          if (expressionTerm is CqlExpression) expressionTerm,
          ...?qualifiedInvocation.operand,
        ];
      }
      return qualifiedInvocation;
    }

    // Member access: O.status, E.period, etc.
    if (qualifiedInvocation is Ref) {
      final memberName = qualifiedInvocation.name;

      // Check if the left side is a library include alias
      // (e.g. Encounter."Client's age is less than 12 months")
      String? scopeName = _extractScopeName(expressionTerm);
      if (scopeName != null &&
          library.includes?.def
                  .any((inc) => inc.localIdentifier == scopeName) ==
              true) {
        return returnRef(memberName, scopeName);
      }

      // Check if the left side is a query alias or let identifier
      if (scopeName != null && CqlBaseVisitor.isQueryAlias(scopeName)) {
        Property prop;
        // Let-introduced identifiers use QueryLetRef as source
        if (CqlBaseVisitor.isLetIdentifier(scopeName)) {
          prop =
              Property(source: QueryLetRef(name: scopeName), path: memberName);
        } else {
          // Source/relationship aliases use scope
          prop = Property(scope: scopeName, path: memberName);
        }
        // Model-driven type inference: record the property's declared type
        // (translator-internal). Conversion insertion happens at operand
        // *binding* sites, not here — converting at property creation
        // double-wraps operands whose binding site inserts its own
        // conversion (e.g. `O.code ~ ...` via the equality visitor).
        final model = currentModel;
        final sourceType = CqlBaseVisitor.aliasType(scopeName);
        if (model != null && sourceType != null) {
          typeProperty(prop, sourceType, model);
        }
        // Legacy name-based wrapping — migrates to model-driven binding-site
        // conversion site by site.
        return CqlBaseVisitor.wrapPropertyWithFhirHelper(prop, memberName,
            model: model);
      }

      final prop = Property(source: expressionTerm, path: memberName);
      // Source-chain member access (e.g. `(singleton from ...).url`): infer
      // the source's type and record the property's declared element type.
      final model = currentModel;
      if (model != null && expressionTerm is CqlExpression) {
        final sourceType = inferType(expressionTerm, model);
        if (sourceType != null && !sourceType.startsWith('List<')) {
          typeProperty(prop, sourceType, model);
        }
      }
      return prop;
    }

    throw ArgumentError('$thisNode Invalid InvocationExpressionTerm');
  }

  /// Extract the alias name from an expression term if it's a simple reference.
  String? _extractScopeName(dynamic expr) {
    if (expr is AliasRef) return expr.name;
    if (expr is IdentifierRef) return expr.name;
    if (expr is ExpressionRef) return expr.name;
    return null;
  }
}
