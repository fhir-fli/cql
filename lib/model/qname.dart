import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:ucum/ucum.dart';

import '../cql.dart';

class QName {
  final String namespaceURI;
  final String localPart;
  final String prefix;

  QName({
    this.namespaceURI = '',
    required this.localPart,
    this.prefix = '',
  });

  factory QName.empty() => QName(namespaceURI: '', localPart: '', prefix: '');

  factory QName.local(String localPart) => QName(
        namespaceURI: '',
        localPart: localPart,
        prefix: '',
      );

  factory QName.fromDataType(String type) => QName(
        namespaceURI: _isElmType(type) ? 'urn:hl7-org:elm-types:r1' : '',
        localPart: type,
        prefix: '',
      );

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
      String namespaceURI = qNameAsString.substring(
          beginningOfNamespaceURI + 1, endOfNamespaceURI);
      final String localPart = qNameAsString.substring(endOfNamespaceURI + 1);
      if (namespaceURI.isEmpty) {
        namespaceURI = _isElmType(localPart) ? 'urn:hl7-org:elm-types:r1' : '';
      }
      return QName(
          namespaceURI: namespaceURI,
          localPart: localPart,
          prefix: qNameAsString.substring(0, beginningOfNamespaceURI));
    } else {
      return QName(
          namespaceURI: _isElmType(qNameAsString)
              ? 'urn:hl7-org:elm-types:r1'
              : qNameAsString,
          localPart: qNameAsString,
          prefix: '');
    }
  }

  factory QName.fromJson(String json) => QName.fromFull(json);

  factory QName.fromLocalPart(String localPart) => QName(
        prefix: '',
        namespaceURI: localPart,
        localPart: localPart,
      );

  factory QName.fromNamespace(String? namespaceURI, String localPart) =>
      QName(namespaceURI: namespaceURI ?? '', localPart: localPart, prefix: '');

  @override
  bool operator ==(Object other) {
    if (other == this) {
      return true;
    } else if (other is QName) {
      final qName = other;
      return localPart == qName.localPart && namespaceURI == qName.namespaceURI;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => namespaceURI.hashCode ^ localPart.hashCode;

  @override
  String toString() =>
      namespaceURI == '' ? localPart : "$prefix{$namespaceURI}$localPart";

  String toJson() => toString();

  bool equals(Object? other) => this == other;

  static QName valueOf(String? qNameAsString) {
    if (qNameAsString == null) {
      throw ArgumentError("cannot create QName from null or empty string");
    } else if (qNameAsString.isEmpty) {
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

  static bool _isElmType(String? type) => [
        'Quantity',
        'Ratio',
        'Integer',
        'Decimal',
        'Code',
        'DateTime',
        'Time',
        'String',
        'Boolean',
        'Concept',
        'Interval',
        'ValueSet',
      ].contains(type);

  List<Type>? getReturnTypes(Library library) {
    final thisType = type;
    return thisType == null ? null : [thisType];
  }

  Type? get type {
    {
      switch (localPart) {
        case 'Null':
          return Null;
        case 'Boolean':
          return FhirBoolean;
        case 'Code':
          return CodeType;
        case 'Concept':
          return ConceptType;
        // case 'ValueSet': return ValueSet;
        // case 'CodeSystem': return CodeSystem;
        // case 'Interval': return IntervalType
        case 'Date':
          return FhirDate;
        case 'DateTime':
          return FhirDateTime;
        case 'Decimal':
          return FhirDecimal;
        case 'Integer':
          return FhirInteger;
        case 'Long':
          return FhirInteger64;
        case 'Quantity':
          return ValidatedQuantity;
        case 'Ratio':
          return ValidatedRatio;
        case 'String':
          return String;
        case 'Time':
          return FhirTime;
        default:
          return null;
      }
    }
  }
}
