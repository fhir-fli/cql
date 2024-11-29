import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlFunctionVisitor extends CqlBaseVisitor<dynamic> {
  CqlFunctionVisitor(super.library);

  @override
  dynamic visitFunction(FunctionContext ctx) {
    print('---- [DEBUG] Visiting Function ----');
    print('Context: ${ctx.toStringTree()}');

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
      print('[DEBUG] Function name: $ref');
      print('[DEBUG] Operands before processing: $operand');

      // Define sets of functions for easier classification
      const queryBasedFunctions = {
        'Avg',
        'Median',
        'Mode',
        'Variance',
        'StdDev',
        'PopulationVariance',
        'PopulationStdDev',
      };

      const aggregateFunctions = {
        'Sum': 'Integer',
        'Min': 'Integer',
        'Max': 'Integer',
        'Count': 'Integer',
      };

      // STEP 1: Wrap LiteralNull elements when appropriate for aggregate functions
      if (aggregateFunctions.containsKey(ref)) {
        final aggregateType = aggregateFunctions[ref]!;
        operand = operand.map((element) {
          if (element is ListExpression) {
            return _processAggregateOperand(element, aggregateType);
          }
          return element;
        }).toList();
        print('[DEBUG] Operands after null wrapping: $operand');
      }

      // STEP 2: Determine if the function needs query transformation
      if (queryBasedFunctions.contains(ref)) {
        print('[DEBUG] Detected query-based aggregate function: $ref');

        const alwaysQueryFunctions = {
          'Avg',
          'Variance',
          'StdDev',
          'PopulationVariance',
          'PopulationStdDev',
        };

        if (alwaysQueryFunctions.contains(ref)) {
          if (operand.isNotEmpty && operand.first is ListExpression) {
            operand[0] =
                _transformToQuery(operand.first as ListExpression, ref);
          }
        } else {
          const mayRequireQueryFunctions = {'Mode', 'Median'};

          if (mayRequireQueryFunctions.contains(ref) &&
              _requiresQueryTransformation(operand, ref)) {
            operand[0] =
                _transformToQuery(operand.first as ListExpression, ref);
          }
        }

        print('[DEBUG] Operands after processing: $operand');
      }

      // STEP 3: Ensure numeric literals are wrapped with `ToDecimal` when necessary
      operand = operand.map((e) {
        if (e is LiteralInteger && ref == 'Equal') {
          print(
              '[DEBUG] Wrapping LiteralInteger in ToDecimal for function "$ref"');
          return ToDecimal(operand: e);
        }
        return e;
      }).toList();

      print('[DEBUG] Operands after type wrapping: $operand');

      // Create and return the corresponding expression
      return CqlExpression.byName(ref, operand, library);
    }

    throw ArgumentError('Invalid Function');
  }

  bool _requiresQueryTransformation(
      List<CqlExpression> operand, String functionName) {
    print(
        'Checking if query transformation is needed for function: $functionName');
    print('Operand: $operand');

    if (operand.isNotEmpty && operand.first is ListExpression) {
      final listExpression = operand.first as ListExpression;
      final elementTypes = listExpression.element
              ?.expand((e) => e.getReturnTypes(library))
              .toSet() ??
          {};

      print('List element types: $elementTypes');

      // For Mode and Median, transformation might be needed.
      if (functionName == 'Mode' || functionName == 'Median') {
        // Enforce transformation if there's any `Null`.
        return elementTypes.contains('LiteralNull') ||
            elementTypes.contains('Null');
      }

      return elementTypes.length >
          1; // Transform if the elements are heterogeneous.
    }
    return false;
  }

  ListExpression _processAggregateOperand(
      ListExpression listExpression, String aggregateType) {
    final elements = listExpression.element;

    // Determine the target type based on the majority of the elements
    final elementTypes = elements
        ?.map((e) => e.getReturnTypes(library))
        .expand((e) => e)
        .toSet()
        .toList();

    print('Element types: $elementTypes');

    // Default to `Integer` if more `Integer` elements are present, otherwise use `Decimal`
    final majorityType = elementTypes?.contains('FhirInteger') ?? false
        ? QName.fromDataType('Integer')
        : QName.fromDataType('Decimal');

    final transformedElements = elements?.map((e) {
      if (e is LiteralNull) {
        print('Forcefully wrapping null with As type: $majorityType');
        return As(
          operand: e,
          asType: majorityType,
        );
      }
      return e;
    }).toList();

    print(
        'Transformed elements (after forceful null wrapping): $transformedElements');

    return ListExpression(
      typeSpecifier: listExpression.typeSpecifier,
      element: transformedElements,
    );
  }

  Query _transformToQuery(ListExpression listExpression, String functionName) {
    print('Transforming list to query for function: $functionName');
    const aliasName = 'X';

    final elementTypes = listExpression.element
            ?.expand((e) => e.getReturnTypes(library))
            .toSet() ??
        {};

    print('Pre elementTypes: $elementTypes');

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
    } else if (elementTypes.length == 2) {
      if (elementTypes.contains('LiteralNull') ||
          elementTypes.contains('Null')) {
        elementTypes.remove('LiteralNull');
        elementTypes.remove('Null');
        if (elementTypes.length == 1) {
          return elementTypes.first;
        }
      }
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
}
