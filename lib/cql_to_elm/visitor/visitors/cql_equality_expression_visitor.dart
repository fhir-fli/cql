import 'package:antlr4/antlr4.dart';

import '../../../cql.dart';

class CqlEqualityExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlEqualityExpressionVisitor(super.library);

  @override
  CqlExpression visitEqualityExpression(EqualityExpressionContext ctx) {
    
    final int thisNode = getNextNode();
    

    String? equalityOperator;
    List<CqlExpression> operand = [];

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        
        final result = byContext(child);
        

        // Check if the left-hand side of Union qualifies for Query transformation
        if (result is NaryExpression && result is Union) {
          if (_requiresQuery(result)) {
            
            final query = _transformUnionToQuery(result, thisNode);
            operand.add(query);
            continue;
          }
        }

        if (result is CqlExpression) {
          operand.add(result);
          
        } else if (result is String) {
          operand.add(ExpressionRef(name: result));
          
        }
      } else {
        equalityOperator = child.text;
        
      }
    }

    // Validate operands and operator
    if (operand.length == 2 && equalityOperator != null) {
      
      switch (equalityOperator) {
        case '=':
          
          return Equal(operand: translateOperand(operand));
        case '!=':
          
          return Not(operand: Equal(operand: translateOperand(operand)));
        case '~':
          
          return Equivalent(operand: translateOperand(operand));
        case '!~':
          
          return Not(operand: Equivalent(operand: translateOperand(operand)));
        default:
          final errorMessage =
              'Unsupported equality operator: $equalityOperator';
          
          throw ArgumentError('$thisNode $errorMessage');
      }
    }

    final errorMessage =
        'Invalid EqualityExpression: operands=${operand.length}, operator=$equalityOperator';
    
    throw ArgumentError('$thisNode $errorMessage');
  }

  /// Determine if a Union should transform into a Query
  bool _requiresQuery(NaryExpression union) {
    
    final operandTypes = union.operand
        ?.map((op) => op.getReturnTypes(library))
    
        .expand((types) => types)
        .toSet();

    
    final requiresQuery = (operandTypes?.length ?? 0) > 1 &&
        !(operandTypes?.contains('Null') ?? false);
    
    return requiresQuery;
  }

  /// Transform a Union into a Query structure
  Query _transformUnionToQuery(NaryExpression union, int parentNode) {
    
    final aliasCounter = parentNode;
    final source = union.operand?.map((op) {
      final relationship = RelationshipClause(
        alias: 'Alias$aliasCounter',
        expression: op,
      );
      
      return relationship;
    }).toList();

    if (source == null || source.isEmpty) {
      const errorMessage = 'Union must contain valid sources.';
      
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
    
    return query;
  }

  /// Build the ChoiceTypeSpecifier for the Query return clause
  ChoiceTypeSpecifier _buildChoiceType(NaryExpression union) {
    
    final elementTypes = union.operand
        ?.map((op) => op.getReturnTypes(library))
      
        .expand((types) => types)
        .toSet();

    
    final choices = elementTypes
        ?.map((type) =>
            NamedTypeSpecifier(namespace: QName.fromDataType(type.toString())))
        .toList();

    if (choices == null || choices.isEmpty) {
      const errorMessage =
          'ChoiceTypeSpecifier requires at least one valid type.';
      
      throw ArgumentError(errorMessage);
    }

    final choiceTypeSpecifier = ChoiceTypeSpecifier(choice: choices);
    
    return choiceTypeSpecifier;
  }
}