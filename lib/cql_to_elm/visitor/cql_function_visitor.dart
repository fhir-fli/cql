import 'package:antlr4/antlr4.dart';
import '../../cql.dart';

class CqlFunctionVisitor extends CqlBaseVisitor<dynamic> {
  CqlFunctionVisitor(super.library);

  @override
  dynamic visitFunction(FunctionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? ref;
    List<CqlExpression> operand = [];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        ref = visitReferentialIdentifier(child);
      } else if (child is ParamListContext) {
        operand.addAll(visitParamList(child));
      }
    }
    if (ref != null) {
      return CqlExpression.byName(ref, operand, library);
    }
    throw ArgumentError('$thisNode Invalid Function');
  }
}
