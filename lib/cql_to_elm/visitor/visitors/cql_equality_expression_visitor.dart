import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlEqualityExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlEqualityExpressionVisitor(super.library);

  @override
  CqlExpression visitEqualityExpression(EqualityExpressionContext ctx) {
    print('DEBUG: Entering visitEqualityExpression with context: $ctx');
    final int thisNode = getNextNode();
    print('DEBUG: Generated node ID: $thisNode');

    String? equalityOperator;
    List<CqlExpression> operand = [];

    for (final child in ctx.children ?? <ParseTree>[]) {
      print(
          'DEBUG: Processing child: ${child.runtimeType} with text: ${child.text}');
      if (child is! TerminalNodeImpl) {
        print('DEBUG: Going to call ${child.text} ${child.runtimeType}');
        final result = byContext(child);
        print('DEBUG: Result from byContext: $result (${result.runtimeType})');

        // Check if the left-hand side of Union qualifies for Query transformation
        if (result is NaryExpression && result is Union) {
          print(
              'DEBUG: Detected Union, evaluating for Query transformation...');
          if (_requiresQuery(result)) {
            print('DEBUG: Transforming Union into Query...');
            final query = _transformUnionToQuery(result, thisNode);
            operand.add(query);
            continue;
          }
        }

        if (result is CqlExpression) {
          operand.add(result);
          print('DEBUG: Added result to operand list: $result');
        } else if (result is String) {
          operand.add(ExpressionRef(name: result));
          print('DEBUG: Added ExpressionRef to operand list: $result');
        }
      } else {
        equalityOperator = child.text;
        print('DEBUG: Detected operator: $equalityOperator');
      }
    }

    print(
        'DEBUG: Completed processing children. Operands: $operand, Operator: $equalityOperator');

    // Validate operands and operator
    if (operand.length == 2 && equalityOperator != null) {
      print('DEBUG: Validating operands and operator...');
      switch (equalityOperator) {
        case '=':
          print('DEBUG: Returning Equal expression');
          return Equal(operand: translateOperand(operand));
        case '!=':
          print('DEBUG: Returning Not(Equal) expression');
          return Not(operand: Equal(operand: translateOperand(operand)));
        case '~':
          print('DEBUG: Returning Equivalent expression');
          return Equivalent(operand: translateOperand(operand));
        case '!~':
          print('DEBUG: Returning Not(Equivalent) expression');
          return Not(operand: Equivalent(operand: translateOperand(operand)));
        default:
          final errorMessage =
              'Unsupported equality operator: $equalityOperator';
          print('ERROR: $errorMessage');
          throw ArgumentError('$thisNode $errorMessage');
      }
    }

    final errorMessage =
        'Invalid EqualityExpression: operands=${operand.length}, operator=$equalityOperator';
    print('ERROR: $errorMessage');
    throw ArgumentError('$thisNode $errorMessage');
  }

  /// Determine if a Union should transform into a Query
  bool _requiresQuery(NaryExpression union) {
    print('DEBUG: Evaluating if Union requires Query transformation...');
    final operandTypes = union.operand
        ?.map((op) => op.getReturnTypes(library))
        .where((types) => types != null)
        .expand((types) => types!)
        .toSet();

    print('DEBUG: Operand types for Union: $operandTypes');
    final requiresQuery = (operandTypes?.length ?? 0) > 1 &&
        !(operandTypes?.contains(Null) ?? false);
    print('DEBUG: Requires Query: $requiresQuery');
    return requiresQuery;
  }

  /// Transform a Union into a Query structure
  Query _transformUnionToQuery(NaryExpression union, int parentNode) {
    print('DEBUG: Transforming Union to Query. Parent Node ID: $parentNode');
    final aliasCounter = parentNode;
    final source = union.operand?.map((op) {
      final relationship = RelationshipClause(
        alias: 'Alias$aliasCounter',
        expression: op,
      );
      print('DEBUG: Created RelationshipClause: $relationship');
      return relationship;
    }).toList();

    if (source == null || source.isEmpty) {
      final errorMessage = 'Union must contain valid sources.';
      print('ERROR: $errorMessage');
      throw ArgumentError(errorMessage);
    }

    final query = Query(
      source: source,
      returnClause: ReturnClause(
        distinct: false,
        expression: As(
          operand: ExpressionRef(name: 'Alias$aliasCounter'),
          asTypeSpecifier: _buildChoiceType(union),
        ),
      ),
    );
    print('DEBUG: Created Query: $query');
    return query;
  }

  /// Build the ChoiceTypeSpecifier for the Query return clause
  ChoiceTypeSpecifier _buildChoiceType(NaryExpression union) {
    print('DEBUG: Building ChoiceTypeSpecifier...');
    final elementTypes = union.operand
        ?.map((op) => op.getReturnTypes(library))
        .where((types) => types != null)
        .expand((types) => types!)
        .toSet();

    print('DEBUG: Element types: $elementTypes');
    final choices = elementTypes
        ?.map((type) =>
            NamedTypeSpecifier(namespace: QName.fromDataType(type.toString())))
        .toList();

    if (choices == null || choices.isEmpty) {
      final errorMessage =
          'ChoiceTypeSpecifier requires at least one valid type.';
      print('ERROR: $errorMessage');
      throw ArgumentError(errorMessage);
    }

    final choiceTypeSpecifier = ChoiceTypeSpecifier(choice: choices);
    print('DEBUG: Created ChoiceTypeSpecifier: $choiceTypeSpecifier');
    return choiceTypeSpecifier;
  }
}
