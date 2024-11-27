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
      print('Element: $element');
      final returnTypes = element.getReturnTypes(library);
      typesList.addAll(returnTypes);
    }
    print('List element types: $typesList');

    // Check if the current context is part of an aggregate function
    final isAggregateContext = _isInAggregateContext(ctx);
    print('Aggregate context: $isAggregateContext');

    // Determine if null wrapping is required
    final needsNullWrapping = isAggregateContext &&
        typesList.length > 1 &&
        typesList.contains('Null');
    print('Needs null wrapping: $needsNullWrapping');

    // Build a ChoiceTypeSpecifier for mixed types if wrapping is needed
    ChoiceTypeSpecifier? choiceTypeSpecifier;
    if (needsNullWrapping) {
      choiceTypeSpecifier = ChoiceTypeSpecifier(
        choice: typesList.map((type) {
          print('Adding type to ChoiceTypeSpecifier: $type');
          return NamedTypeSpecifier(namespace: QName.fromDataType(type));
        }).toList(),
      );
      print('Generated ChoiceTypeSpecifier: $choiceTypeSpecifier');
    }

    // Transform elements to wrap `Null` if required
    final transformedElements = elements.map((e) {
      if (e is LiteralNull && needsNullWrapping) {
        print('Wrapping null with ChoiceTypeSpecifier');
        return As(
          operand: e,
          asTypeSpecifier: choiceTypeSpecifier!,
        );
      }
      return e;
    }).toList();

    print('Transformed elements: $transformedElements');

    // Return the list expression
    return ListExpression(
      typeSpecifier: typeSpecifier,
      element: transformedElements,
    );
  }

  bool _isInAggregateContext(ListSelectorContext ctx) {
    ParseTree? current = ctx.parent;

    // Traverse up the tree to check for aggregate function context
    while (current != null) {
      if (current is FunctionInvocationContext) {
        // Extract the function name correctly
        final functionName = (current.getChild(0))?.text;
        print(current.getChild(0).runtimeType);
        print('Parent function name: $functionName');

        const aggregateFunctions = {
          'Sum',
          'Min',
          'Max',
          'Variance',
          'StdDev',
          'Count',
          'PopulationVariance',
          'PopulationStdDev'
        };

        final isAggregate = aggregateFunctions.contains(functionName);
        print('Is aggregate function: $isAggregate');
        return isAggregate;
      }
      current = current.parent; // Move up the tree
    }

    return false; // Not in aggregate context
  }
}
