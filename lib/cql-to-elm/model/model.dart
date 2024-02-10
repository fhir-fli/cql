import '../../cql.dart';

class Model {
  final ModelInfo info;
  late final Map<String, DataType> index;
  late final Map<String, ClassType> classIndex;
  late final Map<String, DataType> nameIndex;
  final List<Conversion> conversions = [];
  final List<ModelContext> contexts = [];
  late final String defaultContext;

  Model(this.info, ModelManager modelManager) {
    var importer = ModelImporter(info, modelManager);
    index = importer.getTypes();
    for (var c in importer.getConversions()) {
      conversions.add(c);
    }
    for (var c in importer.getContexts()) {
      contexts.add(c);
    }
    defaultContext = importer.getDefaultContextName();

    classIndex = {};
    nameIndex = {};
    for (var t in index.values) {
      if (t is ClassType && t.label != null) {
        classIndex[_casify(t.label!)] = t;
      }
      if (t is NamedType) {
        nameIndex[_casify(t.getSimpleName())] = t;
      }
    }
  }

  ModelInfo getModelInfo() => info;

  String getDefaultContext() => defaultContext;

  Iterable<Conversion> getConversions() => conversions;

  DataType? resolveTypeName(String typeName) {
    typeName = _casify(typeName);
    DataType? result = index[typeName] ?? nameIndex[typeName];
    return result;
  }

  ModelContext? resolveContextName(String contextName,
      {bool mustResolve = true}) {
    for (var context in contexts) {
      if (context.getName() == contextName) {
        return context;
      }
    }

    // Dart does not have a direct equivalent to Java's Arrays.asList; use List.from or List.of instead
    DataType? contextType = resolveTypeName(contextName);
    if (contextType != null && contextType is ClassType) {
      String? keyName;
      for (var cte in contextType.elements) {
        if (cte.getName() == "id") {
          keyName = cte.getName();
          break;
        }
      }
      return ModelContext(contextName, contextType,
          keyNames: keyName != null ? List.of([keyName]) : null);
    }

    if (mustResolve) {
      throw ArgumentError(
          "Could not resolve context name $contextName in model ${info.getName()}.");
    }

    return null;
  }

  ClassType? resolveLabel(String label) => classIndex[_casify(label)];

  String _casify(String typeName) =>
      info.isCaseSensitive ? typeName : typeName.toLowerCase();

  DataType? internalResolveTypeName(String typeName, Model systemModel) {
    DataType? result = resolveTypeName(typeName);
    result ??= systemModel.resolveTypeName(typeName);
    if (result == null) {
      throw ArgumentError(
          "Could not resolve type name $typeName in model ${info.getName()}.");
    }
    return result;
  }
}
