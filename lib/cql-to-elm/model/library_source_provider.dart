import '../../cql.dart';

abstract class LibrarySourceProvider {
  // Returns a Future that completes with a Stream for reading the library source asynchronously.
  Future<Stream<List<int>>> getLibrarySource(
      VersionedIdentifier libraryIdentifier);

  // Adjusted to return a Future that can complete with null.
  Future<Stream<List<int>>?> getLibraryContent(
      VersionedIdentifier libraryIdentifier, LibraryContentType type) async {
    if (LibraryContentType.cql == type) {
      return getLibrarySource(libraryIdentifier);
    }

    return Future.value(null); // Correct way to return null in a Future.
  }
}
