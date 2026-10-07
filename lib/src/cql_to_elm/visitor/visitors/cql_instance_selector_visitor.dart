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
      // A list-valued element given a single value is promoted with ToList
      // (`Concept { codes: Code { … } }` in the reference,
      // CqlTypeOperatorsTest): System.Concept.codes is List<Code>.
      if (classType.namespace.localPart == 'Concept') {
        for (final e in element) {
          final value = e.value;
          if (e.name == 'codes' &&
              value is! ListExpression &&
              value is! ToList) {
            e.value = ToList(operand: value);
          }
        }
      }
      return Instance(
        classType: classType.namespace,
        element: element.isEmpty ? null : element,
      );
    }

    throw ArgumentError('$thisNode Invalid InstanceSelector');
  }
}
