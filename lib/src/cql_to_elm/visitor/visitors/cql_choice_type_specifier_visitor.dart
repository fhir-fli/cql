import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlChoiceTypeSpecifierVisitor
    extends CqlBaseVisitor<ChoiceTypeSpecifier> {
  CqlChoiceTypeSpecifierVisitor(super.library);

  @override
  ChoiceTypeSpecifier visitChoiceTypeSpecifier(ChoiceTypeSpecifierContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    final choice = <TypeSpecifierExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        final newTypeSpecifier = visitTypeSpecifier(child);
        if (newTypeSpecifier != null) {
          choice.add(newTypeSpecifier);
        }
      }
    }
    if (choice.isNotEmpty) {
      return ChoiceTypeSpecifier(choice: choice);
    } else {
      throw ArgumentError('$thisNode Invalid ChoiceTypeSpecifier');
    }
  }
}
