import '../../cql.dart';

class CompiledLibrary {
  VersionedIdentifier? identifier;
  Library? library;
  final Map<String, Element> namespace = {};
  // final OperatorMap operators = OperatorMap();
  final Map<Operator, FunctionDef> functionDefs = {};
  final List<Conversion> conversions = [];

  void setIdentifier(VersionedIdentifier newIdentifier) {
    identifier = newIdentifier;
  }

  void setLibrary(Library newLibrary) {
    library = newLibrary;
  }

  void checkNamespace(String identifier) {
    Element? existingElement = resolve(identifier);
    if (existingElement != null) {
      throw ArgumentError(
          "Identifier $identifier is already in use in this library.");
    }
  }

  void add(dynamic definition) {
    if (definition is UsingDef ||
        definition is IncludeDef ||
        definition is CodeSystemDef ||
        definition is ValueSetDef ||
        definition is CodeDef ||
        definition is ConceptDef ||
        definition is ParameterDef ||
        definition is ExpressionDef) {
      checkNamespace(definition.getLocalIdentifier());
      namespace[definition.getLocalIdentifier()] = definition;
      if (definition is ExpressionDef && definition is FunctionDef) {
        // Register the operator signature
        addFunctionDef(definition, Operator.fromFunctionDef(definition));
      }
    } else {
      throw ArgumentError(
          "Unsupported definition type added to CompiledLibrary.");
    }
  }

  void addFunctionDef(FunctionDef functionDef, Operator operator) {
    // Implementation similar to the Java version
    ensureLibrary(operator);
    // operators.addOperator(operator);
    functionDefs[operator] = functionDef;
  }

  void remove(ExpressionDef expression) {
    if (expression is FunctionDef) {
      throw ArgumentError("FunctionDef cannot be removed.");
    }
    namespace.remove(expression.name);
  }

  void ensureLibrary(Operator operator) {
    // Implementation similar to the Java version
  }

  Element? resolve(String identifier) {
    return namespace[identifier];
  }

  // Further implementations of resolve*Ref methods and other utility methods would go here

  // Conversion handling
  void addConversion(Conversion conversion) {
    if (conversion.isCast) {
      throw ArgumentError(
          "Casting conversions cannot be registered as part of a library.");
    }
    conversions.add(conversion);
  }

  // Resolving references, annotations, and tags would follow a similar pattern as in Java
}
