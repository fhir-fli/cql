import '../cql.dart';

class Libraries {
  Libraries._(); // Private constructor to prevent instantiation

  static IncludeDef resolveLibraryRef(String libraryName, Library relativeTo) {
    for (IncludeDef includeDef in relativeTo.includes?.def ?? <IncludeDef>[]) {
      if (includeDef.localIdentifier == libraryName) {
        return includeDef;
      }
    }
    throw CqlException(
        message: "Could not resolve library reference '$libraryName'.");
  }

  static List<ExpressionDef> resolveAllExpressionRef(
      String name, Library relativeTo) {
    // Dart doesn't support binarySearch directly, filtering manually
    var defs = relativeTo.statements?.def.where((x) => x.name == name).toList();
    if (defs == null || defs.isEmpty) {
      return [];
    }
    // Assuming defs are sorted or ordering is not crucial
    return defs;
  }

  static ExpressionDef resolveExpressionRef(String name, Library relativeTo) {
    var result = resolveAllExpressionRef(name, relativeTo);
    if (result.isNotEmpty) {
      return result.first;
    }
    throw CqlException(
        message:
            "Could not resolve expression reference '$name' in library '${relativeTo.identifier?.id}'.");
  }

  static CodeSystemDef resolveCodeSystemRef(String name, Library relativeTo) {
    for (CodeSystemDef codeSystemDef
        in (relativeTo.codeSystems?.def ?? <CodeSystemDef>[])) {
      if (codeSystemDef.name == name) {
        return codeSystemDef;
      }
    }
    throw CqlException(
        message:
            "Could not resolve code system reference '$name' in library '${relativeTo.identifier?.id}'.");
  }

  static ValueSetDef resolveValueSetRef(String name, Library relativeTo) {
    for (ValueSetDef valueSetDef
        in relativeTo.valueSets?.def ?? <ValueSetDef>[]) {
      if (valueSetDef.name == name) {
        return valueSetDef;
      }
    }
    throw CqlException(
        message:
            "Could not resolve value set reference '$name' in library '${relativeTo.identifier?.id}'.");
  }

  static CodeDef resolveCodeRef(String name, Library relativeTo) {
    for (CodeDef codeDef in (relativeTo.codes?.def ?? <CodeDef>[])) {
      if (codeDef.name == name) {
        return codeDef;
      }
    }
    throw CqlException(
        message:
            "Could not resolve code reference '$name' in library '${relativeTo.identifier?.id}'.");
  }

  static ParameterDef resolveParameterRef(String name, Library relativeTo) {
    for (ParameterDef parameterDef
        in relativeTo.parameters?.def ?? <ParameterDef>[]) {
      if (parameterDef.name == name) {
        return parameterDef;
      }
    }
    throw CqlException(
        message:
            "Could not resolve parameter reference '$name' in library '${relativeTo.identifier?.id}'.");
  }

  static ConceptDef resolveConceptRef(String name, Library relativeTo) {
    for (ConceptDef conceptDef in relativeTo.concepts?.def ?? <ConceptDef>[]) {
      if (conceptDef.name == name) {
        return conceptDef;
      }
    }
    throw CqlException(message: "Could not resolve concept reference '$name'.");
  }

  static List<FunctionDef> getFunctionDefs(String name, Library relativeTo) {
    var defs = resolveAllExpressionRef(name, relativeTo);
    return defs.whereType<FunctionDef>().toList();
  }

  static VersionedIdentifier toVersionedIdentifier(IncludeDef includeDef) {
    return VersionedIdentifier(
      system: NamespaceManager.getUriPart(includeDef.path),
      id: NamespaceManager.getNamePart(includeDef.path),
      version: includeDef.version,
    );
  }
}
