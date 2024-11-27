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
        ref = visitReferentialIdentifier(child); // Extract function name
      } else if (child is ParamListContext) {
        operand.addAll(visitParamList(child)); // Extract operands
      }
    }

    if (ref != null) {
      print('Function name: $ref');
      print('Operands before processing: $operand');

      // Aggregate functions requiring `Query` transformation
      const queryBasedFunctions = {
        'Avg',
        'Median',
        'Mode',
        'Variance',
        'StdDev',
        'PopulationVariance',
        'PopulationStdDev',
      };

      if (queryBasedFunctions.contains(ref)) {
        print('Detected query-based aggregate function: $ref');

        // Transform the first operand (assumed to be the list) into a `Query`
        if (operand.isNotEmpty && operand.first is ListExpression) {
          final listExpression = operand.first as ListExpression;

          operand[0] = _transformToQuery(listExpression, ref);
        }

        print('Operands after processing: $operand');
      } else {
        // For other aggregate functions, handle null wrapping if needed
        const aggregateFunctions = {
          'Sum': 'Integer',
          'Min': 'Integer',
          'Max': 'Integer',
          'Count': 'Integer',
        };

        if (aggregateFunctions.containsKey(ref)) {
          final aggregateType = aggregateFunctions[ref]!;
          operand = operand.map((element) {
            if (element is ListExpression) {
              return _processAggregateOperand(element, aggregateType);
            }
            return element;
          }).toList();
        }
      }

      // Create and return the corresponding expression
      return CqlExpression.byName(ref, operand, library);
    }

    throw ArgumentError('$thisNode Invalid Function');
  }

  Query _transformToQuery(ListExpression listExpression, String functionName) {
    print('Transforming list to query for function: $functionName');
    const aliasName = 'X';

    final elementTypes = listExpression.element
            ?.map((e) => e.resultTypeName)
            .where((type) => type != null)
            .cast<String>()
            .toSet() ??
        {};

    // Determine the casting type based on elements and function
    final castingType = _determineCastingType(elementTypes, functionName);
    print('Determined casting type for Null: $castingType');

    // Transform elements, wrapping Null with the determined type
    final transformedElements = listExpression.element?.map((e) {
      if (e is LiteralNull) {
        print('Wrapping null in list with As type: $castingType');
        return As(
          operand: e,
          asType: QName.fromDataType(castingType),
        );
      }
      return e;
    }).toList();

    // Construct the AliasedQuerySource
    final aliasedQuerySource = AliasedQuerySource(
      alias: aliasName,
      expression: ListExpression(
        typeSpecifier: listExpression.typeSpecifier,
        element: transformedElements,
      ),
    );

    // Construct the ReturnClause
    final returnClause = ReturnClause(
      distinct: false,
      expression: ToDecimal(
        operand: AliasRef(name: aliasName),
      ),
    );

    // Create and return the Query
    return Query(
      source: [aliasedQuerySource],
      returnClause: returnClause,
    );
  }

  String _determineCastingType(Set<String> elementTypes, String functionName) {
    // If all elements are the same type, use that type
    if (elementTypes.length == 1) {
      return elementTypes.first; // E.g., "Integer"
    }

    // Handle mixed types or function-specific cases
    if (functionName == 'Avg' ||
        functionName == 'Variance' ||
        functionName == 'StdDev') {
      return 'Decimal'; // Functions that promote to Decimal
    }

    // Default fallback if unsure
    return 'Integer';
  }

  /// Processes a `ListExpression` operand for aggregate functions.
  /// Wraps `Null` elements with the expected aggregate type.
  ListExpression _processAggregateOperand(
      ListExpression listExpression, String aggregateType) {
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
