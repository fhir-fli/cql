import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlInstanceSelectorVisitor extends CqlBaseVisitor<Instance> {
  CqlInstanceSelectorVisitor(super.library);

  @override
  Instance visitInstanceSelector(InstanceSelectorContext ctx) {
    printIf(ctx);
    final thisNode = getNextNode();
    NamedTypeSpecifier? classType;
    final element = <InstanceElement>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is NamedTypeSpecifierContext) {
        classType = visitNamedTypeSpecifier(child);
      } else if (child is InstanceElementSelectorContext) {
        final newElement = visitInstanceElementSelector(child);
        element.add(newElement);
      }
    }

    if (classType != null) {
      return Instance(
        classType: classType.namespace,
        element: element.isEmpty ? null : element,
      );
    }

    throw ArgumentError('$thisNode Invalid InstanceSelector');
  }
}
