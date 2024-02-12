import '../../cql.dart';

class ModelImporter {
  ModelInfo modelInfo;
  ModelManager modelManager;
  Map<String, Model> modelIndex = {};
  Map<String, TypeInfo> typeInfoIndex = {};
  Map<String, DataType> resolvedTypes = {};
  List<DataType> dataTypes = [];
  List<Conversion> conversions = [];
  List<ModelContext> contexts = [];
  ModelContext? defaultContext;

  ModelImporter(this.modelInfo, this.modelManager) {
    for (final requiredModel in modelInfo.requiredModelInfo) {
      final model = modelManager.resolveModel(requiredModel.name,
          version: requiredModel.version);
      modelIndex[requiredModel.name] = model;
    }

    // Ensure System model is registered
    if (!modelIndex.containsKey("System")) {
      var systemModel = modelManager.resolveModel("System");
      modelIndex["System"] = systemModel;
    }

    for (final t in modelInfo.typeInfo) {
      if (t is SimpleTypeInfo) {
        typeInfoIndex[ensureUnqualified(t.name)] = t;
      } else if (t is ClassInfo) {
        typeInfoIndex[ensureUnqualified(t.name)] = t;
      }
    }

    for (final c in modelInfo.conversionInfo) {
      var fromType =
          resolveTypeNameOrSpecifier(c.fromType, c.fromTypeSpecifier);
      var toType = resolveTypeNameOrSpecifier(c.toType, c.toTypeSpecifier);
      var qualifierIndex = c.functionName.indexOf('.');
      var libraryName = qualifierIndex >= 0
          ? c.functionName.substring(0, qualifierIndex)
          : null;
      var functionName = qualifierIndex >= 0
          ? c.functionName.substring(qualifierIndex + 1)
          : null;
      var operator = Operator(
          name: functionName,
          signature: Signature([fromType.toString(), toType.toString()]));
      if (libraryName != null) {
        operator.libraryName = libraryName;
      }

      // All conversions loaded as part of a model are implicit
      var conversion = Conversion.fromOperator(operator, implicit: true);
      conversions.add(conversion);
    }

    // Import model contexts
    for (var c in modelInfo.contextInfo) {
      var contextType; //resolveTypeSpecifier(c.contextType);
      if (contextType is! ClassType) {
        throw ArgumentError("Model context ${c.name} must be a class type.");
      }
      var modelContext = ModelContext(
        name: c.name,
        type: contextType,
        keys: c.keyElement?.split(";"),
        birthDateElement: c.birthDateElement,
      );
      contexts.add(modelContext);
    }

    // Create a default context based on the patient class information if it's present
    if (contexts.isEmpty && modelInfo.patientClassName != null) {
      var contextType = modelInfo.patientClassName == null
          ? null
          : resolveTypeName(modelInfo.patientClassName!);
      if (contextType is ClassType) {
        var modelContext = ModelContext(
          name: contextType.name,
          type: contextType,
          keys: ["id"],
          birthDateElement: modelInfo.patientBirthDatePropertyName,
        );
        contexts.add(modelContext);
        defaultContext = modelContext;
      }
    }

    // Additional model importing logic...
  }

// Dart version of ensureUnqualified
  String ensureUnqualified(String name) {
    final modelName = modelInfo.name;
    if (name.startsWith("$modelName.")) {
      return name.substring(name.indexOf('.') + 1);
    }
    return name;
  }

  DataType? resolveTypeNameOrSpecifierElement(TupleTypeInfoElement element) {
    DataType? result = resolveTypeNameOrSpecifier(
        element.elementType, element.elementTypeSpecifier);
    result ??= resolveTypeNameOrSpecifier(element.type, element.typeSpecifier);
    return result;
  }

// Assuming the existence of a method resolveTypeNameOrSpecifier that takes the type name or type specifier and returns a DataType
  DataType? resolveTypeNameOrSpecifier(
      String? typeName, TypeSpecifierModel? typeSpecifier) {
    // Your implementation to resolve the type name or specifier to a DataType
    // This is a placeholder for your actual logic to resolve a DataType based on the given inputs
    return null; // Placeholder return, adjust as necessary based on your implementation
  }

  DataType resolveTypeName(String typeName) {
    // Check if typeName is null or empty
    if (typeName.isEmpty) {
      throw ArgumentError("typeName is null or empty");
    }

    // Handling interval and list type specifiers for backward compatibility
    if (typeName.toLowerCase().startsWith("interval<")) {
      var pointType = resolveTypeName(typeName.substring(
          typeName.indexOf('<') + 1, typeName.lastIndexOf('>')));
      return IntervalType(
          pointType); // Assuming IntervalType constructor takes a DataType
    } else if (typeName.toLowerCase().startsWith("list<")) {
      var elementType = resolveTypeName(typeName.substring(
          typeName.indexOf('<') + 1, typeName.lastIndexOf('>')));
      return ListType(
          elementType); // Assuming ListType constructor takes a DataType
    }

    // Attempt to look up the type by name
    var result = lookupType(typeName);
    if (result == null) {
      var typeInfo = lookupTypeInfo(ensureUnqualified(typeName));
      if (typeInfo == null) {
        throw ArgumentError(
            "Could not resolve type info for type name $typeName.");
      }
      result = resolveTypeInfo(typeInfo);
    }

    return result;
  }

  // Placeholder for lookupType method
  DataType? lookupType(String typeName) {
    // Your implementation here
    return null; // Placeholder return
  }

// Placeholder for lookupTypeInfo method
  TypeInfo? lookupTypeInfo(String typeName) {
    // Your implementation here
    return null; // Placeholder return
  }

// Placeholder for resolveTypeInfo method
  DataType resolveTypeInfo(TypeInfo typeInfo) {
    // Your implementation here, based on how you resolve TypeInfo to DataType

    throw ArgumentError("Could not resolve type info for type name $typeInfo.");
  }

  DataType? resolveTypeSpecifier(TypeSpecifierModel? typeSpecifier) {
    if (typeSpecifier == null) {
      return null;
    }

    // if (typeSpecifier is NamedTypeSpecifier) {
    //   var qualifier = typeSpecifier.namespace?.isEmpty ?? true
    //       ? typeSpecifier.modelName // For backwards compatibility, modelName is used if namespace is null or empty
    //       : typeSpecifier.namespace;
    //   qualifier ??= modelInfo.name; // Assuming modelInfo is an available object of a class that contains model info

    //   var qualifiedTypeName = "$qualifier.${typeSpecifier.name}";
    //   return resolveTypeName(qualifiedTypeName);
    // } else if (typeSpecifier is IntervalTypeSpecifier) {
    //   var pointType = resolveTypeNameOrSpecifier(
    //       typeSpecifier.pointType, typeSpecifier.pointTypeSpecifier);
    //   return IntervalType(pointType); // Assuming IntervalType constructor takes a DataType
    // } else if (typeSpecifier is ListTypeSpecifier) {
    //   var elementType = resolveTypeNameOrSpecifier(
    //       typeSpecifier.elementType, typeSpecifier.elementTypeSpecifier);
    //   return ListType(elementType); // Assuming ListType constructor takes a DataType
    // } else if (typeSpecifier is TupleTypeSpecifier) {
    //   var tupleType = TupleType(); // Assuming TupleType has a default constructor and a method to add elements
    //   for (var specifierElement in typeSpecifier.elements) {
    //     var element = TupleTypeElement(
    //         specifierElement.name, resolveTypeSpecifier(specifierElement.elementType));
    //     tupleType.addElement(element); // Assuming addElement method exists to add elements to TupleType
    //   }
    //   return tupleType;
    // } else if (typeSpecifier is ChoiceTypeSpecifier) {
    //   var choices = <DataType>[];
    //   for (var choice in typeSpecifier.choices) {
    //     var choiceType = resolveTypeSpecifier(choice);
    //     if (choiceType != null) {
    //       choices.add(choiceType);
    //     }
    //   }
    //   return ChoiceType(choices); // Assuming ChoiceType constructor takes a list of DataType
    // }

    return null;
  }
}
