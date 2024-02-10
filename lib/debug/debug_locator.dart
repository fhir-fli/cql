import '../cql.dart';

class DebugLocator {
  final DebugLocatorType type;
  final String locator;
  final Location? location;

  DebugLocator.fromLocation(Location location)
      : type = DebugLocatorType.location,
        locator = location.toLocator(),
        location = location;

  DebugLocator(this.type, String locator)
      : locator = _processLocator(type, locator),
        location = type == DebugLocatorType.location
            ? Location.fromLocator(locator)
            : null;

  static String _processLocator(DebugLocatorType type, String locator) {
    switch (type) {
      case DebugLocatorType.nodeId:
      case DebugLocatorType.exceptionType:
        _guardLocator(locator);
        return locator;
      case DebugLocatorType.nodeType:
        _guardLocator(locator);
        return locator.endsWith("Evaluator") ? locator : "$locator Evaluator";
      case DebugLocatorType.location:
        return locator;
      default:
        throw ArgumentError("Unknown debug locator type: $type");
    }
  }

  static void _guardLocator(String locator) {
    if (locator.isEmpty) {
      throw ArgumentError("nodeId locator required");
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DebugLocator &&
          runtimeType == other.runtimeType &&
          type == other.type &&
          locator == other.locator;

  @override
  int get hashCode => locator.hashCode ^ type.hashCode;

  @override
  String toString() => "DebugLocator{ type=$type, locator=$locator }";
}
