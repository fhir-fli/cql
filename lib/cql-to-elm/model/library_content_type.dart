// Define the enum
enum LibraryContentType {
  cql,
  xml,
  json,
  coffee,
}

// Extension on LibraryContentType to provide mimeType values
extension LibraryContentTypeExtension on LibraryContentType {
  String get mimeType {
    switch (this) {
      case LibraryContentType.cql:
        return "text/cql";
      case LibraryContentType.xml:
        return "application/elm+xml";
      case LibraryContentType.json:
        return "application/elm+json";
      case LibraryContentType.coffee:
        return "application/elm+coffee";
      default:
        return "unknown/unknown";
    }
  }
}
