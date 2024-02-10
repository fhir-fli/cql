import '../cql.dart';

class DebugResult {
  final Map<String, DebugLibraryResultEntry> libraryResults = {};
  final List<CqlException> messages = [];

  DebugResult();

  void logDebugResult(
      Element node, Library currentLibrary, Object result, DebugAction action) {
    try {
      var libraryId = currentLibrary.identifier?.id;
      var libraryResultEntry =
          libraryId == null ? null : libraryResults[libraryId];
      if (libraryResultEntry == null) {
        libraryResultEntry = DebugLibraryResultEntry(libraryId);

        libraryResults[libraryId.toString()] = libraryResultEntry;
      }
      libraryResultEntry.logDebugResultEntry(node, result);

      if (action == DebugAction.log) {
        DebugUtilities.logDebugResult(node, currentLibrary, result);
      }
    } catch (e) {
      // Do nothing, an exception logging debug helps no one
    }
  }

  void logDebugError(CqlException exception) {
    messages.add(exception);
  }

  List<CqlException> getMessages() => messages;

  Map<String, DebugLibraryResultEntry> getLibraryResults() => libraryResults;
}
