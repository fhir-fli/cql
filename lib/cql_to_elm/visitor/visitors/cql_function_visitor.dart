import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlFunctionVisitor extends CqlBaseVisitor<dynamic> {
  CqlFunctionVisitor(super.library);

  @override
  dynamic visitFunction(FunctionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? ref;
    List<CqlExpression> operand = [];

    // Extract the function name and operands
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        ref = visitReferentialIdentifier(child);
      } else if (child is ParamListContext) {
        operand.addAll(visitParamList(child));
      }
    }

    if (ref != null) {
      print('Function name: $ref');
      print('Operands before processing: $operand');

      // Aggregate functions and their expected types
      const aggregateFunctions = {
        'Sum': 'Integer',
        'Min': 'Integer',
        'Max': 'Integer',
        'Variance': 'Decimal',
        'StdDev': 'Decimal',
        'Count': 'Integer',
        'PopulationVariance': 'Decimal',
        'PopulationStdDev': 'Decimal',
      };

      if (aggregateFunctions.containsKey(ref)) {
        print('Detected aggregate function: $ref');

        // Get the expected aggregate type
        final aggregateType = aggregateFunctions[ref]!;
        print('Expected aggregate type: $aggregateType');

        // Process the operand list for null wrapping
        operand = operand.map((element) {
          if (element is ListExpression) {
            return _processAggregateOperand(element, aggregateType);
          }
          return element;
        }).toList();

        print('Operands after processing: $operand');
      }

      // Create and return the corresponding expression
      return CqlExpression.byName(ref, operand, library);
    }

    throw ArgumentError('$thisNode Invalid Function');
  }

  /// Processes a `ListExpression` operand for an aggregate function.
  /// Wraps `Null` elements with the expected aggregate type.
  ListExpression _processAggregateOperand(ListExpression listExpression, String aggregateType) {
    print('Processing aggregate operand: $listExpression');

    final elements = listExpression.element;

    // Transform elements to wrap `Null` with the aggregate type
    final transformedElements = elements?.map((e) {
      if (e is LiteralNull) {
        print('Wrapping null with As type: $aggregateType');
        return As(
          operand: e,
          asType: QName.fromDataType(aggregateType),
        );
      }
      return e;
    }).toList();

    print('Transformed elements: $transformedElements');

    return ListExpression(
      typeSpecifier: listExpression.typeSpecifier,
      element: transformedElements,
    );
  }
}
