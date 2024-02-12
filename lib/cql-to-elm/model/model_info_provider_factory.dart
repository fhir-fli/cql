import '../../cql.dart';

class ModelInfoProviderFactory {
  static final List<ModelInfoProvider> _providers = [];

  // Prevents the creation of instances
  ModelInfoProviderFactory._();

  // Method to register providers, to be called explicitly where your app initializes
  static void registerProvider(ModelInfoProvider provider) {
    if (!_providers.contains(provider)) {
      _providers.add(provider);
    }
  }

  // Optionally, a method to unregister or remove a provider if needed
  static void unregisterProvider(ModelInfoProvider provider) {
    _providers.remove(provider);
  }

  // Retrieves all registered providers
  static List<ModelInfoProvider> providers({bool refresh = false}) {
    // In this simple example, 'refresh' doesn't directly apply as in Java's ServiceLoader,
    // but you could implement logic to reinitialize or clear and reload providers based on your needs
    if (refresh) {
      // Example: reinitialize providers, clear the list, or other logic as needed
    }
    return _providers;
  }

  // Clears all providers
  static void clearProviders() {
    _providers.clear();
  }
}
