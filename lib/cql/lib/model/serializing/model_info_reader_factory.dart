import '../../cql.dart';

class ModelInfoReaderFactory {
  static ModelInfoReaderProviderLoader providers(bool refresh) {
    final loader = ServiceLoader.load(ModelInfoReaderProvider);
    if (refresh) {
      loader.reload();
    }

    final providersList = <ModelInfoReaderProvider>[];
    while (loader.moveNext()) {
      providersList.add(loader.current);
    }

    return ModelInfoReaderProviderLoader(providersList);
  }

  static ModelInfoReader getReader(String contentType) {
    final provider = providers(false).current;

    // Ensure only one provider exists before calling create.
    if (providers(false).moveNext()) {
      throw Exception(
          'Multiple ModelInfoReaderProviders found on the classpath. '
          'Remove a reference to either the "model-jackson" or the "model-jaxb" package.');
    }

    // Directly call create on the retrieved provider.
    return provider.create(contentType);
  }
}

class ModelInfoReaderProviderLoader {
  final Iterable<ModelInfoReaderProvider> providers;

  ModelInfoReaderProviderLoader(this.providers);
}
