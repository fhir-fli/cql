import '../../../cql.dart';

class CqlInFixSetExpressionVisitor extends CqlBaseVisitor<NaryExpression> {
  CqlInFixSetExpressionVisitor(super.library);

  @override
  NaryExpression visitInFixSetExpression(InFixSetExpressionContext ctx) {
    printIf(ctx); // Debug information
    final int thisNode = getNextNode();

    if (ctx.childCount == 3) {
      final left = byContext(ctx.getChild(0)!);
      final operator = ctx.getChild(1)!.text;
      final right = byContext(ctx.getChild(2)!);

      if (left is CqlExpression && right is CqlExpression) {
        // Get return types for left and right operands
        final leftTypes = left.getReturnTypes(library).toSet();
        final rightTypes = right.getReturnTypes(library).toSet();

        // Combine types and determine if transformation is needed
        final combinedTypes = _combineTypes(leftTypes, rightTypes);
        final transformedOperands = _transformOperandsForMixedTypes(
          left,
          right,
          combinedTypes,
        );

        switch (operator) {
          case '|': // Pipe operator
          case 'union':
            return Union(operand: transformedOperands);
          case 'intersect':
            return Intersect(operand: transformedOperands);
          case 'except':
            return Except(operand: transformedOperands);
          default:
            throw ArgumentError('$thisNode Unsupported operator: $operator');
        }
      }
    }

    throw ArgumentError('$thisNode Invalid InFixSetExpression');
  }

  /// Combines return types from two operands.
  Set<String>? _combineTypes(
    Set<String>? leftTypes,
    Set<String>? rightTypes,
  ) {
    if (leftTypes != null && rightTypes != null) {
      return {...leftTypes, ...rightTypes};
    }
    return leftTypes ?? rightTypes;
  }

  /// Transforms operands if mixed types are detected.
  List<CqlExpression> _transformOperandsForMixedTypes(
    CqlExpression left,
    CqlExpression right,
    Set<String>? combinedTypes,
  ) {
    if (combinedTypes != null && combinedTypes.length > 1) {
      // Use a ChoiceTypeSpecifier for mixed types
      final choiceType = ChoiceTypeSpecifier(
        choice: combinedTypes.map((type) {
          return NamedTypeSpecifier(
            namespace: QName.fromDataType(type),
          );
        }).toList(),
      );

      final listType = ListTypeSpecifier(elementType: choiceType);

      return [
        As(operand: left, asTypeSpecifier: listType),
        As(operand: right, asTypeSpecifier: listType),
      ];
    }
    return [left, right];
  }
}
