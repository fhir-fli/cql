import '../../../cql.dart';

class CqlInFixSetExpressionVisitor extends CqlBaseVisitor<NaryExpression> {
  CqlInFixSetExpressionVisitor(super.library);

  @override
  NaryExpression visitInFixSetExpression(InFixSetExpressionContext ctx) {
    printIf(ctx); // Debug information
    final int thisNode = getNextNode();

    if (ctx.childCount == 3) {
      final left = byContext(ctx.getChild(0)!);
      print('Left: $left');
      final operator = ctx.getChild(1)!.text;
      print('Operator: $operator');
      final right = byContext(ctx.getChild(2)!);
      print('Right: $right');

      if (left is CqlExpression && right is CqlExpression) {
        print('left: $left');
        print('right: $right');

        // Get return types for left and right operands
        final leftTypes = left.getReturnTypes(library).toSet();
        final rightTypes = right.getReturnTypes(library).toSet();

        print('leftTypes: $leftTypes');
        print('rightTypes: $rightTypes');

        // Combine types and determine if transformation is needed
        final combinedTypes = _combineTypes(leftTypes, rightTypes);
        print('Combined types: $combinedTypes');
        final transformedOperands = _transformOperandsForMixedTypes(
          left,
          right,
          combinedTypes,
        );
        print('Transformed operands: $transformedOperands');

        switch (operator) {
          case '|': // Pipe operator
          case 'union':
            print('Creating Union with operands: $transformedOperands');
            return Union(operand: transformedOperands);
          case 'intersect':
            print('Creating Intersect with operands: $transformedOperands');
            return Intersect(operand: transformedOperands);
          case 'except':
            print('Creating Except with operands: $transformedOperands');
            return Except(operand: transformedOperands);
          default:
            throw ArgumentError('$thisNode Unsupported operator: $operator');
        }
      }
    }

    throw ArgumentError('$thisNode Invalid InFixSetExpression');
  }

  /// Combines return types from two operands.
  Set<String> _combineTypes(Set<String> leftTypes, Set<String> rightTypes) {
    print('Left types: $leftTypes');
    print('Right types: $rightTypes');
    final combined = {...leftTypes, ...rightTypes};
    print('Combined types: $combined');
    return combined;
  }

  List<CqlExpression> _transformOperandsForMixedTypes(
    CqlExpression left,
    CqlExpression right,
    Set<String> combinedTypes,
  ) {
    print('Combined types for transformation: $combinedTypes');

    // Static homogeneous lists can be wrapped directly in `As`.
    if (left is ListExpression && right is ListExpression) {
      print('Static ListExpression detected, wrapping in `As` directly.');
      final choiceType = _buildChoiceType(combinedTypes);
      return [
        As(
            operand: left,
            asTypeSpecifier: ListTypeSpecifier(elementType: choiceType)),
        As(
            operand: right,
            asTypeSpecifier: ListTypeSpecifier(elementType: choiceType)),
      ];
    }

    // Fallback for mixed/dynamic types.
    if (combinedTypes.length > 1) {
      final choiceType = _buildChoiceType(combinedTypes);
      print('ChoiceTypeSpecifier: $choiceType');

      return [
        _transformExpressionToQuery(left, choiceType, 'AliasLeft'),
        _transformExpressionToQuery(right, choiceType, 'AliasRight'),
      ];
    }

    // Homogeneous types don't require transformation.
    return [left, right];
  }

  Query _transformExpressionToQuery(
    CqlExpression expression,
    ChoiceTypeSpecifier choiceType,
    String alias,
  ) {
    print('Transforming expression to Query: $expression');
    print('ChoiceTypeSpecifier: $choiceType');
    print('Alias: $alias');
    return Query(
      source: [
        RelationshipClause(
          alias: alias,
          expression: expression,
        ),
      ],
      returnClause: ReturnClause(
        distinct: false,
        expression: As(
          operand: ExpressionRef(name: alias),
          asTypeSpecifier: choiceType,
        ),
      ),
    );
  }

  /// Builds a ChoiceTypeSpecifier from the combined types.
  ChoiceTypeSpecifier _buildChoiceType(Set<String> combinedTypes) {
    print('Building ChoiceTypeSpecifier from combined types: $combinedTypes');
    final choiceType = ChoiceTypeSpecifier(
      choice: combinedTypes.map((type) {
        print('Adding type to ChoiceTypeSpecifier: $type');
        return NamedTypeSpecifier(namespace: QName.fromDataType(type));
      }).toList(),
    );
    print('Generated ChoiceTypeSpecifier: $choiceType');
    return choiceType;
  }
}
