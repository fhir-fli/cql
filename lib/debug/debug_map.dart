import '../cql.dart';

class DebugMap {
  final Map<String, DebugLibraryMapEntry> libraryMaps = {};
  final Map<String, DebugMapEntry> nodeTypeEntries = {};
  final Map<String, DebugMapEntry> exceptionTypeEntries = {};
  bool isLoggingEnabled = false;
  bool isCoverageEnabled = false;

  DebugMap();

  DebugAction shouldDebug(Exception e) {
    if (exceptionTypeEntries.isEmpty) {
      return DebugAction.log;
    } else {
      final exceptionTypeEntry = exceptionTypeEntries[e.runtimeType.toString()];
      if (exceptionTypeEntry != null) return exceptionTypeEntry.action;
    }

    // Exceptions are always logged (unless explicitly disabled by a DebugAction.none for the specific type)
    return DebugAction.log;
  }

  DebugAction shouldDebugElement(Element node, Library currentLibrary) {
    final libraryMap = currentLibrary.identifier?.id == null
        ? null
        : libraryMaps[currentLibrary.identifier!.id!];
    if (libraryMap != null) {
      final action = libraryMap.shouldDebug(node);
      if (action != DebugAction.none) {
        return action;
      }
    }

    final nodeEntry = nodeTypeEntries[node.runtimeType.toString()];
    if (nodeEntry != null && nodeEntry.action != DebugAction.none) {
      return nodeEntry.action;
    }

    if (isLoggingEnabled) {
      return DebugAction.log;
    }

    if (isCoverageEnabled) {
      return DebugAction.trace;
    }

    return DebugAction.none;
  }

  DebugLibraryMapEntry? getLibraryMap(String libraryName) {
    return libraryMaps[libraryName];
  }

  DebugLibraryMapEntry ensureLibraryMap(String libraryName) {
    return libraryMaps.putIfAbsent(
        libraryName, () => DebugLibraryMapEntry(libraryName));
  }

  void addDebugEntry(DebugLocator debugLocator, DebugAction action,
      [String? libraryName]) {
    switch (debugLocator.type) {
      case DebugLocatorType.nodeType:
        nodeTypeEntries[debugLocator.locator] =
            DebugMapEntry(debugLocator, action);
        break;
      case DebugLocatorType.exceptionType:
        exceptionTypeEntries[debugLocator.locator] =
            DebugMapEntry(debugLocator, action);
        break;
      default:
        if (libraryName != null) {
          final libraryMap = ensureLibraryMap(libraryName);
          libraryMap.addEntryLocatorAction(debugLocator, action);
        } else {
          throw ArgumentError(
              "Library entries must have a library name specified");
        }
    }
  }

  void removeDebugEntry(DebugLocator debugLocator, [String? libraryName]) {
    switch (debugLocator.type) {
      case DebugLocatorType.nodeType:
        nodeTypeEntries.remove(debugLocator.locator);
        break;
      case DebugLocatorType.exceptionType:
        exceptionTypeEntries.remove(debugLocator.locator);
        break;
      default:
        if (libraryName != null) {
          final libraryMap = getLibraryMap(libraryName);
          libraryMap?.removeEntry(debugLocator);
        } else {
          throw ArgumentError(
              "Library entries must have a library name specified");
        }
    }
  }
}
