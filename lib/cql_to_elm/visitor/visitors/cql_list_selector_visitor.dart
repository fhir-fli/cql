import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlListSelectorVisitor extends CqlBaseVisitor<ListExpression> {
  CqlListSelectorVisitor(super.library);

  @override
  ListExpression visitListSelector(ListSelectorContext ctx) {
    printIf(ctx);
    TypeSpecifierExpression? typeSpecifier;
    final List<CqlExpression> element = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      } else if (child is ExpressionContext) {
        final result = byContext(child);
        if (result is CqlExpression) {
          element.add(result);
        }
      }
    }
    final typesList = <Type>{};
    for (final e in element) {
      final types = e.getReturnTypes(library);
      if (types != null) {
        typesList.addAll(types);
      }
    }

    final nonNullList = typesList.where((element) => element != Null).toSet();
    if (nonNullList.length == 1 && typesList.length == 2) {
      // final type = nonNullList.first;
      final newElement = <CqlExpression>[];
      for (final e in element) {
        final returnTypes = e.getReturnTypes(library);
        if (returnTypes == null ||
            returnTypes.isEmpty ||
            returnTypes.first == Null) {
          newElement.add(As(
              operand: e, asType: QName.fromDataType('${nonNullList.first}')));
        } else {
          newElement.add(e);
        }
      }
      return ListExpression(
        typeSpecifier: typeSpecifier,
        element: newElement,
      );
    } else {
      return ListExpression(
        typeSpecifier: typeSpecifier,
        element: element,
      );
    }
  }
}
