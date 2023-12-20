import 'dart:convert';
import 'dart:io';

import 'package:xml/xml.dart';

import '../cql.dart';

class XsdToModelInfoConverter {
  Future<ModelInfo> convert(String filePath) async {
    final fileContent = await File(filePath).readAsString();
    final document = XmlDocument.parse(fileContent);
    final rootElements = document.findAllElements('xs:schema');
    if (rootElements.isEmpty) {
      throw Exception('No schema found in file');
    } else {
      final rootElement = rootElements.first;
      final namespace = rootElement.attributes
          .firstWhere((p0) => p0.name.toString() == 'targetNamespace');

      final targetNamespace = rootElement.attributes
          .firstWhere((p0) => p0.name.toString() == 'xmlns');

      final modelInfo = ModelInfo(
        name: filePath.split('/').last.replaceAll('.qdm', ''),
        url: Uri.parse(namespace.value),
        contextInfo: [],
      );

      for (final complexType in rootElement.findElements('xs:complexType')) {
        final name = complexType.attributes
            .firstWhere((p0) => p0.name.toString() == 'name');
        final extensions = complexType.findElements('xs:extension');
        XmlAttribute? baseName;
        if (extensions.isNotEmpty) {
          baseName = extensions.first.attributes
              .firstWhere((p0) => p0.name.toString() == 'base');
        }

        modelInfo.contextInfo.add(ContextInfo(
            name: name.value,
            contextType: NamedTypeSpecifier(
                namespace: QName.fromNamespace(
              baseName?.value,
              name.value,
            ))));
      }

      return modelInfo;
    }
  }
}

Future<void> main() async {
  final converter = XsdToModelInfoConverter();
  final modelInfo = await converter.convert('qdm/qdm.xsd');

  print('ModelInfo JSON:');
  print(jsonPrettyPrint(modelInfo.toJson()));
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
