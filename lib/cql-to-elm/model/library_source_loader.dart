import '../../cql.dart';

abstract class LibrarySourceLoader {
  void clearProviders();

  Future<Stream<List<int>>?>? getLibrarySource(
      VersionedIdentifier libraryIdentifier);

  void registerProvider(LibrarySourceProvider provider);

  // Optional method to get library content based on content type
  Future<Stream<List<int>>?>? getLibraryContent(
      VersionedIdentifier libraryIdentifier, LibraryContentType type) async {
    if (type == LibraryContentType.cql) {
      return getLibrarySource(libraryIdentifier);
    }
    return null;
  }

  // Optional method to check if library content is available
  Future<bool> isLibraryContentAvailable(
      VersionedIdentifier libraryIdentifier, LibraryContentType type) async {
    if (type == LibraryContentType.cql) {
      return await getLibrarySource(libraryIdentifier) != null;
    }
    return false;
  }
}
