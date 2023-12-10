class QName {
  final String namespaceURI;
  final String localPart;
  final String prefix;

  QName({
    required this.namespaceURI,
    required this.localPart,
    this.prefix = '',
  });

  factory QName.fromLocalPart(String localPart) =>
      QName(namespaceURI: '', localPart: localPart, prefix: '');

  factory QName.fromNamespace(String? namespaceURI, String localPart) =>
      QName(namespaceURI: namespaceURI ?? '', localPart: localPart, prefix: '');

  factory QName.fromFull(String? qNameAsString) {
    if (qNameAsString == null || qNameAsString.isEmpty) {
      throw ArgumentError('Cannot create QName from "null" or empty String');
    } else if (qNameAsString.startsWith('{')) {
      final endOfNamespaceURI = qNameAsString.indexOf('}');
      if (endOfNamespaceURI == -1) {
        throw ArgumentError(
            'Cannot create QName from "$qNameAsString", missing closing "}"');
      }
      return QName(
          namespaceURI: qNameAsString.substring(1, endOfNamespaceURI),
          localPart: qNameAsString.substring(endOfNamespaceURI + 1),
          prefix: '');
    } else {
      return QName(namespaceURI: '', localPart: qNameAsString, prefix: '');
    }
  }

  factory QName.fromJson(Map<String, dynamic> json) => QName(
        namespaceURI: json['namespaceURI'] as String,
        localPart: json['localPart'] as String,
        prefix: json['prefix'] as String? ?? "",
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'namespaceURI': namespaceURI,
        'localPart': localPart,
        'prefix': prefix,
      };

  bool operator ==(Object? objectToTest) {
    if (objectToTest == this) {
      return true;
    } else if (objectToTest != null && objectToTest is QName) {
      final qName = objectToTest;
      return localPart == qName.localPart && namespaceURI == qName.namespaceURI;
    } else {
      return false;
    }
  }

  bool equals(Object? objectToTest) => this == objectToTest;

  int get hashCode => namespaceURI.hashCode ^ localPart.hashCode;

  String toString() =>
      namespaceURI == "" ? localPart : "{$namespaceURI}$localPart";

  static QName valueOf(String qNameAsString) {
    if (qNameAsString.isEmpty) {
      throw ArgumentError("cannot create QName from \"null\" or \"\" String");
    } else if (qNameAsString[0] != '{') {
      return QName(namespaceURI: "", localPart: qNameAsString, prefix: "");
    } else if (qNameAsString.startsWith("{}")) {
      throw ArgumentError(
          "Namespace URI .equals(XMLConstants.NULL_NS_URI), .equals(\"\"), only the local part, \"${qNameAsString.substring(2 + "".length)}\", should be provided.");
    } else {
      int endOfNamespaceURI = qNameAsString.indexOf('}');
      if (endOfNamespaceURI == -1) {
        throw ArgumentError(
            "cannot create QName from \"$qNameAsString\", missing closing \"}\"");
      } else {
        return QName(
          namespaceURI: qNameAsString.substring(1, endOfNamespaceURI),
          localPart: qNameAsString.substring(endOfNamespaceURI + 1),
        );
      }
    }
  }
}
