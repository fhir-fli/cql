import 'package:fhir/r4.dart';

import '../cql.dart';

class QName {
  final String prefix;
  final String namespaceURI;
  final String localPart;

  QName({
    this.prefix = '',
    required this.namespaceURI,
    required this.localPart,
  });

  factory QName.empty() => QName(namespaceURI: '', localPart: '', prefix: '');

  factory QName.fromLocalPart(String localPart) => QName(
        prefix: '',
        namespaceURI: resourceTypeFromStringMap.keys.contains(localPart)
            ? 'http://hl7.org/fhir'
            : elmTypes.contains(localPart)
                ? 'urn:hl7-org:elm-types:r1'
                : '',
        localPart: localPart,
      );

  factory QName.fromNamespace(String? namespaceURI, String localPart) =>
      QName(namespaceURI: namespaceURI ?? '', localPart: localPart, prefix: '');

  factory QName.fromFull(String? qNameAsString) {
    if (qNameAsString?.isEmpty ?? true) {
      throw ArgumentError('Cannot create QName from "null" or empty String');
    } else if (qNameAsString!.contains('{')) {
      final beginningOfNamespaceURI = qNameAsString.indexOf('{');
      final endOfNamespaceURI = qNameAsString.indexOf('}');
      if (endOfNamespaceURI == -1) {
        throw ArgumentError(
            'Cannot create QName from "$qNameAsString", missing closing "}"');
      }
      return QName(
          namespaceURI: qNameAsString.substring(1, endOfNamespaceURI),
          localPart: qNameAsString.substring(endOfNamespaceURI + 1),
          prefix: qNameAsString.substring(0, beginningOfNamespaceURI));
    } else {
      return QName(namespaceURI: '', localPart: qNameAsString, prefix: '');
    }
  }

  factory QName.fromJson(String json) => QName.fromFull(json);

  String toJson() => toString();

  @override
  bool operator ==(Object? objectToTest) {
    if (objectToTest == this) {
      return true;
    } else if (objectToTest is QName) {
      final qName = objectToTest;
      return localPart == qName.localPart && namespaceURI == qName.namespaceURI;
    } else {
      return false;
    }
  }

  bool equals(Object? objectToTest) => this == objectToTest;

  @override
  int get hashCode => namespaceURI.hashCode ^ localPart.hashCode;

  @override
  String toString() =>
      namespaceURI == '' ? localPart : "$prefix{$namespaceURI}$localPart";

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