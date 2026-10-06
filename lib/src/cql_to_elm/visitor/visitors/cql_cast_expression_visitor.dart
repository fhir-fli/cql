import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlCastExpressionVisitor extends CqlBaseVisitor<As> {
  CqlCastExpressionVisitor(super.library);

  @override
  As visitCastExpression(CastExpressionContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    CqlExpression? operand;
    TypeSpecifierExpression? typeSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionContext) {
        operand = byContext(child) as CqlExpression?;
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }

    if (operand != null && typeSpecifier != null) {
      // expression.xsd As: `strict` (default false) means a value not of
      // the type is an error rather than null; CQL's `cast … as` is the
      // strict form. The reference writes it with asTypeSpecifier and
      // strict=true (CqlTypeOperatorsTest). Until 2026-10-06 this wrote the
      // type as resultTypeSpecifier and no strict at all.
      return As(operand: operand, asTypeSpecifier: typeSpecifier)
        ..strict = true;
    }

    throw ArgumentError('$thisNode Invalid CastExpression');
  }
}
