import 'package:cql/src/internal.dart';

class CqlListSelectorVisitor extends CqlBaseVisitor<ListExpression> {
  CqlListSelectorVisitor(super.library);

  @override
  ListExpression visitListSelector(ListSelectorContext ctx) {
    TypeSpecifierExpression? typeSpecifier;
    final elements = <CqlExpression>[];

    for (final child in ctx.children ?? []) {
      if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      } else if (child is ExpressionContext) {
        final result = byContext(child);
        if (result is CqlExpression) elements.add(result);
      }
    }

    // `List<Integer> { 1, null, 3 }` types its nulls from the specifier;
    // `{ 1, null, 3 }` from a sibling element, as the reference does (42 of
    // its 152 typed nulls are list elements).
    final transformed = typeSpecifier != null
        ? elements
            .map(
              (e) => e is LiteralNull
                  ? As(operand: e, asTypeSpecifier: typeSpecifier)
                  : e,
            )
            .toList()
        : typeNullOperands(elements);

    return ListExpression(
      typeSpecifier: typeSpecifier,
      element: transformed,
    );
  }
}
