import '../cql.dart';

class DebugUtilities {
  DebugUtilities._(); // Private constructor to prevent instantiation

  static void logDebugResult(
      Element node, Library currentLibrary, Object result) {
    // Using print for simplicity; replace with your preferred logging approach
    print(
        "${currentLibrary.identifier?.id ?? 'unknown'}.${toDebugLocation(node)}: ${toDebugString(result)}");
  }

  static String toDebugLocation(Element node) {
    String result = "";
    // In Dart, checking for nullity and types can be more straightforward
    if (node.locator != null) {
      result = node.locator!;
    }
    if (node.localId != null) {
      result += "(${node.localId})";
    }
    return result;
  }

  static String toDebugString(Object? result) {
    if (result is CqlType) {
      return result.toString();
    } else if (result is Iterable) {
      var sb = StringBuffer();
      sb.write("{");
      bool first = true;
      for (var element in result) {
        if (!first) sb.write(", ");
        sb.write(toDebugString(element));
        first = false;
      }
      sb.write("}");
      return sb.toString();
    } else {
      return result?.toString() ?? "<null>";
    }
  }
}
