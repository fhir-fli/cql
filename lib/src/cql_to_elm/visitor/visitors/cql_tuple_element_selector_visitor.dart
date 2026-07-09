import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlTupleElementSelectorVisitor extends CqlBaseVisitor<TupleElement> {
  CqlTupleElementSelectorVisitor(super.library);

  @override
  TupleElement visitTupleElementSelector(TupleElementSelectorContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    String? referentialIdentifier;
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        referentialIdentifier = visitReferentialIdentifier(child);
      } else if (child is! TerminalNodeImpl) {
        expression = byContext(child);
      }
    }
    if (referentialIdentifier != null && expression != null) {
      return TupleElement(
        name: referentialIdentifier,
        value: expression,
      );
    }
    throw ArgumentError('$thisNode Invalid TupleElementSelector');
  }
}
