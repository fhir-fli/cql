// Create a registry of providers
import '../../cql.dart';

final List<ModelInfoReaderProvider> modelInfoReaderProviders = [];

class ModelInfoReaderFactory {
  static ModelInfoReaderProvider? _provider;

  static ModelInfoReaderProvider? _loadProvider() {
    for (final provider in modelInfoReaderProviders) {
      if (provider.isSupported()) {
        return provider;
      }
    }
    return null;
  }

  static ModelInfoReader getReader(String contentType) {
    _provider ??= _loadProvider();

    if (_provider != null) {
      return _provider!.create(contentType);
    }

    throw Exception(
        'No ModelInfoReaderProviders found. Add references to the desired providers.');
  }
}