import 'package:antlr4/antlr4.dart';
import 'package:cql/cql.dart';

class CqlContextDefinitionVisitor extends CqlBaseVisitor<void> {
  CqlContextDefinitionVisitor(super.library);

  @override
  void visitContextDefinition(ContextDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      }
    }
    library.contexts ??= ContextDefs();
    if (name != null) {
      library.contexts!.def.add(ContextDef(name: name));
      for (final model in library.usings?.def ?? <UsingDef>[]) {
        if (model.localIdentifier != null) {
          final modelInfo = modelInfoProvider.load(ModelIdentifier(
              id: model.localIdentifier!, version: model.version));
          if (modelInfo != null) {
            final index = modelInfo.typeInfo.indexWhere((element) =>
                (element is ClassInfo &&
                    (element.label == name ||
                        element.name == name ||
                        element.identifier == name)) ||
                (element is ProfileInfo &&
                    (element.label == name ||
                        element.name == name ||
                        element.identifier == name)));
            if (index != -1) {
              // A retrievable ClassInfo is a model resource type (the
              // model-driven answer to "is `name` a FHIR resource?"), so it
              // gets a StructureDefinition templateId.
              final typeInfo = modelInfo.typeInfo[index];
              final isResource = typeInfo is ClassInfo && typeInfo.retrievable;
              library.statements ??= ExpressionDefs();
              library.statements!.def.add(
                ExpressionDef(
                  name: name,
                  context: name,
                  expression: SingletonFrom(
                    operand: Retrieve(
                      templateId: isResource
                          ? 'http://hl7.org/fhir/StructureDefinition/$name'
                          : name,
                      dataType: QName(
                          namespaceURI: modelInfo.url.toString(),
                          localPart: name),
                    ),
                  ),
                ),
              );
              // The context define yields a single instance of the context
              // type (e.g. `Patient` → FHIR.Patient), so queries over it
              // (`Patient P`) infer their alias type.
              CqlBaseVisitor.registerDefineType(library, name,
                  Model.of(modelInfo).normalizeTypeName(name));
            }
          }
        }
      }
    } else {
      throw ArgumentError('$thisNode Invalid ContextDefinition');
    }
  }
}
