import 'package:cql/src/internal.dart';

class CqlInFixSetExpressionVisitor extends CqlBaseVisitor<NaryExpression> {
  CqlInFixSetExpressionVisitor(super.library);

  @override
  NaryExpression visitInFixSetExpression(InFixSetExpressionContext ctx) {
    printIf(ctx);

    final thisNode = getNextNode();

    if (ctx.childCount == 3) {
      final left = byContext(ctx.getChild<dynamic>(0)!);

      final operator = ctx.getChild<dynamic>(1)!.text;

      final right = byContext(ctx.getChild<dynamic>(2)!);

      if (left is CqlExpression && right is CqlExpression) {
        final transformedOperands = _bindSetOperands(left, right);

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

  /// The operands of a set operator as the reference writes them
  /// (measured 2026-10-06 over the 31 reference files): two lists whose
  /// element types differ are each cast to the list of the choice of both
  /// (`{ 1, 2, 3 } union { 'a', 'b', 'c' }` → As(List<Choice<Integer,
  /// String>>) on both sides, Exercises04); a bare null is typed as the
  /// other side's list type (`{ 1, 4 } except null`, CqlListOperatorsTest);
  /// everything else, same-typed or empty lists included, stays as written.
  /// Until then every pair of lists was cast, empty ones to a choice of
  /// nothing.
  List<CqlExpression> _bindSetOperands(
    CqlExpression left,
    CqlExpression right,
  ) {
    if (left is ListExpression && right is ListExpression) {
      final leftType = systemTypeOf(left);
      final rightType = systemTypeOf(right);
      if (leftType != null &&
          rightType != null &&
          leftType.toString() != rightType.toString()) {
        ListTypeSpecifier choiceOfBoth() => ListTypeSpecifier(
              elementType: ChoiceTypeSpecifier(
                choice: [
                  NamedTypeSpecifier(namespace: _elementOf(leftType)),
                  NamedTypeSpecifier(namespace: _elementOf(rightType)),
                ],
              ),
            );
        return [
          As(operand: left, asTypeSpecifier: choiceOfBoth()),
          As(operand: right, asTypeSpecifier: choiceOfBoth()),
        ];
      }
    }
    return typeNullOperands([left, right]);
  }

  /// `List<{ns}T>` → `{ns}T`.
  static QName _elementOf(QName listType) {
    final local = listType.localPart;
    return QName.parse(local.substring(5, local.length - 1));
  }
}
