import '../cql.dart';

class Environment {
  final LibraryManager libraryManager;
  final Map<String, DataProvider> dataProviders = {};
  final TerminologyProvider? terminologyProvider;
  final Map<String, DataProvider> packageMap = {};
  final Map<VersionedIdentifier, ExternalFunctionProvider>
      externalFunctionProviders = {};

  Environment(this.libraryManager,
      [Map<String, DataProvider>? dataProviders, this.terminologyProvider]) {
    if (dataProviders != null) {
      this.dataProviders.addAll(dataProviders);
      for (var entry in dataProviders.entries) {
        registerDataProvider(entry.key, entry.value);
      }
    }
    if (!this.dataProviders.containsKey('urn:hl7-org:elm-types:r1')) {
      registerDataProvider('urn:hl7-org:elm-types:r1', SystemDataProvider());
    }
  }

  Object? resolvePath(Object? target, String path) {
    if (target == null) return null;

    var clazz = target.runtimeType.toString();
    if (clazz.startsWith("String") ||
        clazz.startsWith("int") ||
        clazz.startsWith("double")) {
      throw CqlException(
          message:
              "Invalid path: $path for type: $clazz - this is likely an issue with the data model.");
    }

    var dataProvider = resolveDataProvider(clazz);
    // if (dataProvider is SystemDataProvider) {
    //   return dataProvider.resolvePath(target, path);
    // } else {
    return null;
    // }
  }

  Object? as(Object? operand, Type type, bool isStrict) {
    if (operand == null) return null;

    if (operand.runtimeType == type) {
      return operand;
    }

    var provider = resolveDataProvider(operand.runtimeType.toString(), false);
    // if (provider is CompositeDataProvider) {
    //   return provider.as(operand, type, isStrict);
    // } else {
    return null;
    // }
  }

  bool? objectEqual(Object? left, Object? right) {
    if (left == null) return null;

    var clazz = left.runtimeType.toString();
    var dataProvider = resolveDataProvider(clazz);
    // if (dataProvider is SystemDataProvider) {
    //   return dataProvider.objectEqual(left, right);
    // } else {
    return null;
    // }
  }

  bool objectEquivalent(Object? left, Object? right) {
    if (left == null && right == null) {
      return true;
    }
    if (left == null || right == null) {
      return false;
    }

    var clazz = left.runtimeType.toString();
    var dataProvider = resolveDataProvider(clazz);
    return dataProvider.objectEquivalent(left, right);
  }

  void registerExternalFunctionProvider(
      VersionedIdentifier identifier, ExternalFunctionProvider provider) {
    externalFunctionProviders[identifier] = provider;
  }

  ExternalFunctionProvider getExternalFunctionProvider(
      VersionedIdentifier identifier) {
    var provider = externalFunctionProviders[identifier];
    if (provider == null) {
      throw CqlException(
          message:
              "Could not resolve external function provider for library '${identifier.id}'.");
    }
    return provider;
  }

  void registerDataProvider(String modelUri, DataProvider dataProvider) {
    dataProviders[modelUri] = dataProvider;
    // dataProvider
    //     .getPackageNames()
    //     .forEach((pn) => packageMap[pn] = dataProvider);
  }

  DataProvider resolveDataProvider(String packageName,
      [bool mustResolve = true]) {
    var dataProvider = packageMap[packageName];
    if (dataProvider == null && mustResolve) {
      throw CqlException(
          message:
              "Could not resolve data provider for package '$packageName'.");
    }
    return dataProvider!;
  }

  DataProvider resolveDataProviderByModelUri(String modelUri) {
    var dataProvider = dataProviders[modelUri];
    if (dataProvider == null) {
      throw CqlException(
          message: "Could not resolve data provider for model '$modelUri'.");
    }
    return dataProvider;
  }

  Type? resolveType(dynamic typeSpecifier) {
    // This method demonstrates handling different type specifiers.
    // In Dart, handling this would typically involve checking the runtime type
    // and acting accordingly since Dart does not have direct equivalents to some of the Java types used.
    if (typeSpecifier is NamedTypeSpecifier) {
      return resolveTypeName(typeSpecifier.namespace.toJson());
    } else if (typeSpecifier is ListTypeSpecifier) {
      return List;
    } else if (typeSpecifier is IntervalTypeSpecifier) {
      return IntervalExpression; // Assuming Interval is a defined class
    } else if (typeSpecifier is ChoiceTypeSpecifier) {
      return Object;
    } // Add more cases as needed for your application
    return null;
  }

  Type? resolveTypeName(String typeName) {
    // This would involve resolving a type name to a Dart Type.
    // The actual implementation would depend on how your types are organized and referenced.
    // Example:
    if (typeName == 'String') return String;
    if (typeName == 'Integer') return int;
    // Add more type name resolutions as needed
    return null;
  }

  CompiledLibrary resolveLibrary(VersionedIdentifier identifier) {
    // Assuming Library is a class that represents a resolved CQL library
    // and libraryManager is an instance of a class that manages libraries.
    var library = libraryManager.resolveLibrary(identifier);
    if (library == null) {
      throw CqlException(
          message: 'Library ${identifier.id} could not be resolved.');
    }
    return library;
  }

  QName fixupQName(QName typeName) {
    // This function is meant to handle QName adjustments, which might be necessary when working with XML namespaces in Dart.
    // Implementation would depend on how QName-like functionality is represented in Dart in your project.
    return typeName; // Placeholder return
  }
}
