import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlExistenceExpressionVisitor extends CqlBaseVisitor<Exists> {
  CqlExistenceExpressionVisitor(super.library);

  @override
  Exists visitExistenceExpression(ExistenceExpressionContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          // `exists null`: the null is the operator's parameter type,
          // List<Any> (CqlListOperatorsTest).
          if (result is LiteralNull) {
            return Exists(
              operand: As(
                operand: result,
                asTypeSpecifier: ListTypeSpecifier(
                  elementType:
                      NamedTypeSpecifier(namespace: QName.fromElmType('Any')),
                ),
              ),
            );
          }
          return Exists(operand: result);
        }
      }
    }
    throw ArgumentError('$thisNode Invalid ExistenceExpression');
  }
}
