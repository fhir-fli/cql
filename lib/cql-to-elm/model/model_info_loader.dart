import '../../cql.dart';

class ModelInfoLoader implements NamespaceAware, PathAware {
  String? path;
  NamespaceManager? namespaceManager;
  final List<ModelInfoProvider> _providers = [];
  bool _initialized = false;

  ModelInfoLoader({this.path, this.namespaceManager});

  List<ModelInfoProvider> _getProviders() {
    if (!_initialized) {
      _initialized = true;
      // Assuming ModelInfoProviderFactory is adapted to Dart and provides a way to get providers
      // This part needs to be adapted based on how you implement providers retrieval in Dart
      for (var provider in ModelInfoProviderFactory.providers()) {
        registerModelInfoProvider(provider);
      }
    }
    return _providers;
  }

  ModelInfo? getModelInfo(ModelIdentifier modelIdentifier) {
    _checkModelIdentifier(modelIdentifier);

    ModelInfo? modelInfo;

    for (var provider in _getProviders()) {
      modelInfo = provider.load(modelIdentifier);
      if (modelInfo != null) {
        break;
      }
    }

    if (modelInfo == null) {
      throw ArgumentError(
          "Could not resolve model info provider for model ${modelIdentifier.id}, version ${modelIdentifier.version}.");
    }

    return modelInfo;
  }

  void registerModelInfoProvider(ModelInfoProvider provider,
      {bool priority = false}) {
    if (namespaceManager != null && provider is NamespaceAware) {
      provider.setNamespaceManager(namespaceManager!);
    }

    if (path != null && provider is PathAware) {
      provider.setPath(path!);
    }

    if (priority) {
      _providers.insert(0, provider);
    } else {
      _providers.add(provider);
    }
  }

  void unregisterModelInfoProvider(ModelInfoProvider provider) {
    _providers.remove(provider);
  }

  void clearModelInfoProviders() {
    _providers.clear();
    _initialized = false;
  }

  void _checkModelIdentifier(ModelIdentifier modelIdentifier) {
    if (modelIdentifier.id.isEmpty) {
      throw ArgumentError("ModelIdentifier Id is null or empty.");
    }
  }

  @override
  void setNamespaceManager(NamespaceManager namespaceManager) {
    this.namespaceManager = namespaceManager;
    for (var provider in _getProviders()) {
      if (provider is NamespaceAware) {
        provider.setNamespaceManager(namespaceManager);
      }
    }
  }

  @override
  void setPath(String path) {
    // You might need to validate the path differently in Dart, depending on your application's requirements
    this.path = path;
    for (var provider in _getProviders()) {
      if (provider is PathAware) {
        provider.setPath(path);
      }
    }
  }
}
