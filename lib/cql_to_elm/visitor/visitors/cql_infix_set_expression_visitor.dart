import '../../../cql.dart';

class CqlInFixSetExpressionVisitor extends CqlBaseVisitor<NaryExpression> {
  CqlInFixSetExpressionVisitor(super.library);

  @override
  NaryExpression visitInFixSetExpression(InFixSetExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    if (ctx.childCount == 3) {
      final left = byContext(ctx.getChild(0)!);
      final operator = ctx.getChild(1)!.text;
      final right = byContext(ctx.getChild(2)!);

      if (left is CqlExpression &&
          right is CqlExpression &&
          operator == 'union') {
        // Check for mixed types
        final leftTypes = left.getReturnTypes(library);
        final rightTypes = right.getReturnTypes(library);

        if (leftTypes != null && rightTypes != null) {
          final combinedTypes = {...leftTypes, ...rightTypes};
          if (combinedTypes.length > 1) {
            // Use a ChoiceTypeSpecifier for mixed types
            final choiceType = ChoiceTypeSpecifier(
              choice: combinedTypes.map((type) {
                return NamedTypeSpecifier(
                  namespace: QName.fromDataType(type.toString()),
                );
              }).toList(),
            );

            return Union(
              operand: [
                As(operand: left, asTypeSpecifier: choiceType),
                As(operand: right, asTypeSpecifier: choiceType),
              ],
            );
          }
        }
        return Union(operand: [left, right]);
      }
    }

    throw ArgumentError('$thisNode Invalid InFixSetExpression');
  }
}
