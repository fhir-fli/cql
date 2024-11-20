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
    final typesList = <Type>{};
    for (final element in elements) {
      final returnTypes = element.getReturnTypes(library);
      if (returnTypes != null) {
        typesList.addAll(returnTypes);
      }
    }

    // Identify non-null types
    final nonNullTypes = typesList.where((type) => type != Null).toSet();

    if (nonNullTypes.length > 1) {
      // Mixed types: use a ChoiceTypeSpecifier
      final choiceTypeSpecifier = ChoiceTypeSpecifier(
        choice: nonNullTypes.map((type) {
          return NamedTypeSpecifier(
            namespace: QName.fromDataType(type.toString()),
          );
        }).toList(),
      );

      return ListExpression(
        typeSpecifier: choiceTypeSpecifier,
        element: elements.map((e) {
          final returnTypes = e.getReturnTypes(library);
          if (returnTypes == null ||
              returnTypes.isEmpty ||
              returnTypes.first == Null) {
            return As(
              operand: e,
              asTypeSpecifier: choiceTypeSpecifier,
            );
          }
          return e;
        }).toList(),
      );
    } else if (nonNullTypes.length == 1 && typesList.contains(Null)) {
      // Single non-null type with Null elements: wrap Null elements in `As` expressions
      final wrappedElements = <CqlExpression>[];
      final nonNullType = nonNullTypes.first;

      for (final element in elements) {
        final returnTypes = element.getReturnTypes(library);
        if (returnTypes == null ||
            returnTypes.isEmpty ||
            returnTypes.first == Null) {
          wrappedElements.add(As(
            operand: element,
            asType: QName.fromDataType(nonNullType.toString()),
          ));
        } else {
          wrappedElements.add(element);
        }
      }

      return ListExpression(
        typeSpecifier: typeSpecifier,
        element: wrappedElements,
      );
    }

    // Otherwise, return the list as-is
    return ListExpression(
      typeSpecifier: typeSpecifier,
      element: elements,
    );
  }
}
