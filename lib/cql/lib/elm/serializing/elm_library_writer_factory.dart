import 'serializing.dart';

class LibraryWriterFactory {
  const LibraryWriterFactory._();

  static LibraryWriter getWriter(String contentType) {
    var providers = _providers(false);
    if (providers.moveNext()) {
      var p = providers.current;
      if (providers.moveNext()) {
        throw Exception(
            "Multiple LibraryWriterProviders found on the classpath. "
            "You need to remove a reference to either the 'elm-jackson' or the 'elm-jaxb' package");
      }
      return p.create(contentType);
    }
    throw Exception("No LibraryWriterProviders found on the classpath. "
        "You need to add a reference to one of the 'elm-jackson' or 'elm-jaxb' packages, "
        "or provide your own implementation.");
  }

  static Iterator<LibraryWriterProvider> _providers([bool refresh = false]) {
    // Simulating a provider list, replace this with your actual provider list logic
    var providerList = <LibraryWriterProvider>[];
    if (refresh) {
      // Simulating a reload of providers (replace with actual reload logic)
      providerList.clear();
      providerList.addAll([
        // Updated list of LibraryWriterProviders after reload
      ]);
    }
    return providerList.iterator;
  }
}
