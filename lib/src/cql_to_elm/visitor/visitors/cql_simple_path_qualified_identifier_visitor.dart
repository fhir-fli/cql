import 'package:cql/src/internal.dart';

class CqlSimplePathQualifiedIdentifierVisitor extends CqlBaseVisitor<String> {
  CqlSimplePathQualifiedIdentifierVisitor(super.library);

  @override
  Retrieve visitSimplePathQualifiedIdentifier(
    SimplePathQualifiedIdentifierContext ctx,
  ) {
    printIf(ctx);
    final thisNode = getNextNode();
    // for (final child in ctx.children ?? <ParseTree>[]) {
    // }
    throw ArgumentError('$thisNode Invalid SimplePathQualifiedIdentifier');
  }
}
