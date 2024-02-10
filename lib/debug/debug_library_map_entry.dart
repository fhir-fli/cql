import '../cql.dart';

class DebugLibraryMapEntry {
  final String libraryName;
  final Map<String, DebugMapEntry> nodeEntries = {};
  final Map<String, DebugMapEntry> locationEntries = {};

  DebugLibraryMapEntry(this.libraryName);

  DebugAction shouldDebug(Element node) {
    DebugMapEntry? nodeEntry = nodeEntries[node.localId];
    if (nodeEntry != null && nodeEntry.action != DebugAction.none) {
      return nodeEntry.action;
    }

    for (var entry in locationEntries.values) {
      if (node.locator != null) {
        Location nodeLocation = Location.fromLocator(node.locator);
        if ((entry.locator.location?.includes(nodeLocation) ?? false) &&
            entry.action != DebugAction.none) {
          return entry.action;
        }
      }
    }
    return DebugAction.none;
  }

  void addEntryLocatorAction(DebugLocator debugLocator, DebugAction action) {
    addEntry(DebugMapEntry(debugLocator, action));
  }

  void addEntry(DebugMapEntry entry) {
    switch (entry.locator.type) {
      case DebugLocatorType.nodeId:
        nodeEntries[entry.locator.locator] = entry;
        break;
      case DebugLocatorType.location:
        locationEntries[entry.locator.locator] = entry;
        break;
      default:
        throw ArgumentError(
            "Library debug map entry can only contain node id or location debug entries");
    }
  }

  void removeEntry(DebugLocator debugLocator) {
    switch (debugLocator.type) {
      case DebugLocatorType.nodeId:
        nodeEntries.remove(debugLocator.locator);
        break;
      case DebugLocatorType.location:
        locationEntries.remove(debugLocator.locator);
        break;
      default:
        throw ArgumentError(
            "Library debug map entry only contains node id or location debug entries");
    }
  }
}
