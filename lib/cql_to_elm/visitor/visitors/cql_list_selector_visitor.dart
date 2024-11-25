import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlListSelectorVisitor extends CqlBaseVisitor<ListExpression> {
  CqlListSelectorVisitor(super.library);

  @override
  ListExpression visitListSelector(ListSelectorContext ctx) {
    printIf(ctx);

    // Type specifier for the list (if provided)
    TypeSpecifierExpression? typeSpecifier;
    final List<CqlExpression> elements = <CqlExpression>[];

    // Extract elements and type specifiers
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      } else if (child is ExpressionContext) {
        final result = byContext(child);
        if (result is CqlExpression) {
          elements.add(result);
        }
      }
    }

    // Gather return types for all elements
    final typesList = <String>{};
    for (final element in elements) {
      final returnTypes = element.getReturnTypes(library);
        typesList.addAll(returnTypes);
    }

    // Handle mixed types without adding a ChoiceTypeSpecifier
    if (typesList.length > 1) {
      // Just ensure each element is correctly represented; no overarching typeSpecifier
      return ListExpression(
        typeSpecifier: null, // Do not include a typeSpecifier at the list level
        element: elements.map((e) {
          if (e is LiteralNull) {
            return e; // Keep null as-is
          }
          return e; // Directly include all other elements
        }).toList(),
      );
    }

    // If only one type or empty list, return as-is
    return ListExpression(
      typeSpecifier: typeSpecifier,
      element: elements,
    );
  }
}
