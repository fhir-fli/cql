import '../cql.dart';

class Environment {
  final LibraryManager libraryManager;
  final Map<String, DataProvider> dataProviders = {};
  final TerminologyProvider? terminologyProvider;

  Map<String, DataProvider> packageMap = {};

  // External function providers map
  Map<VersionedIdentifier, ExternalFunctionProvider> externalFunctionProviders =
      {};

  Environment(this.libraryManager,
      [Map<String, DataProvider>? dataProviders, this.terminologyProvider]) {
    if (dataProviders != null) {
      dataProviders.forEach((key, value) {
        registerDataProvider(key, value);
      });
    }

    // Ensuring the system data provider is registered if not already
    if (!this.dataProviders.containsKey("urn:hl7-org:elm-types:r1")) {
      registerDataProvider("urn:hl7-org:elm-types:r1", SystemDataProvider());
    }
  }

  void registerExternalFunctionProvider(
      VersionedIdentifier identifier, ExternalFunctionProvider provider) {
    externalFunctionProviders[identifier] = provider;
  }

  ExternalFunctionProvider getExternalFunctionProvider(
      VersionedIdentifier identifier) {
    final provider = externalFunctionProviders[identifier];
    if (provider == null) {
      throw CqlException(
          "Could not resolve external function provider for library '${identifier.id}'.");
    }
    return provider;
  }

  void registerDataProvider(String modelUri, DataProvider dataProvider) {
    dataProviders[modelUri] = dataProvider;
    for (var packageName in dataProvider.packageNames) {
      packageMap[packageName] = dataProvider;
    }
  }

  DataProvider resolveDataProvider(String packageName,
      [bool mustResolve = true]) {
    final dataProvider = packageMap[packageName];
    if (dataProvider == null && mustResolve) {
      throw CqlException(
          "Could not resolve data provider for package '$packageName'.");
    }
    return dataProvider!;
  }

  // Additional methods related to data provider resolution, type resolution, and instance creation
  // would need to be implemented here, adapting Java patterns to Dart as appropriate.

  Library resolveLibrary(VersionedIdentifier identifier) {
    return libraryManager.resolveLibrary(identifier);
  }
}
