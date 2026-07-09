import 'package:cql/src/internal.dart';

class CqlAccessModifierVisitor extends CqlBaseVisitor<AccessModifier> {
  CqlAccessModifierVisitor(super.library);

  @override
  AccessModifier visitAccessModifier(AccessModifierContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    if (ctx.text == 'public') {
      return AccessModifier.public;
    } else if (ctx.text == 'private') {
      return AccessModifier.private;
    } else {
      throw ArgumentError('$thisNode Invalid AccessModifier');
    }
  }
}
