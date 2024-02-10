import '../cql.dart';

class DebugLibraryResultEntry {
  final String? libraryName;
  final Map<DebugLocator, List<DebugResultEntry>> results = {};

  DebugLibraryResultEntry(this.libraryName);

  Map<DebugLocator, List<DebugResultEntry>> getResults() => results;

  void _logDebugResult(DebugLocator locator, Object result) {
    results.putIfAbsent(locator, () => []).add(DebugResultEntry(result));
  }

  void logDebugResultEntry(Element node, Object result) {
    // Assuming Element class has getLocalId() and getLocator() methods or properties.
    if (node.localId != null) {
      DebugLocator locator =
          DebugLocator(DebugLocatorType.nodeId, node.localId!);
      _logDebugResult(locator, result);
    }

    // Assuming the presence of a method or property getLocator() returning a Locator object,
    // and Location.fromLocator() method exists to convert Locator to Location.
    var locatorObj = node.locator;
    if (locatorObj != null) {
      DebugLocator locator =
          DebugLocator.fromLocation(Location.fromLocator(locatorObj));
      _logDebugResult(locator, result);
    } else {
      DebugLocator locator =
          DebugLocator(DebugLocatorType.nodeType, node.runtimeType.toString());
      _logDebugResult(locator, result);
    }
  }
}
