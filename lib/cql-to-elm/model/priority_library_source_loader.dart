import '../../cql.dart';

class PriorityLibrarySourceLoader extends LibrarySourceLoader {
  final List<LibrarySourceProvider> _providers = [];
  bool _initialized = false;

  @override
  void registerProvider(LibrarySourceProvider provider) {
    _providers.add(provider);
  }

  @override
  void clearProviders() {
    _providers.clear();
    _initialized = false;
  }

  @override
  Future<Stream<List<int>>?>? getLibrarySource(
      VersionedIdentifier libraryIdentifier) {
    return getLibraryContent(libraryIdentifier, LibraryContentType.cql);
  }

  @override
  Future<Stream<List<int>>?>? getLibraryContent(
      VersionedIdentifier libraryIdentifier, LibraryContentType type) {
    if (!_initialized) {
      _initializeProviders();
    }

    for (var provider in _providers) {
      var content = provider.getLibraryContent(libraryIdentifier, type);
      return content;
    }

    return null;
  }

  void _initializeProviders() {
    // This method should initialize your providers based on your application's needs
    // This is a placeholder for provider initialization logic
    _initialized = true;
  }
}
