import 'dart:convert';
import 'dart:io';
import 'package:xml/xml.dart';
import 'cql.dart';

class XsdToModelInfoConverter {
  Future<ModelInfo> convert(String filePath) async {
    final fileContent = await File(filePath).readAsString();
    final document = XmlDocument.parse(fileContent);
    final rootElement = document.rootElement;

    // Extract the target namespace and model name
    final namespace = rootElement.attributes
        .firstWhere((p0) => p0.name.toString() == 'targetNamespace');
    final modelName = filePath.split('/').last.replaceAll('.qdm', '');
    final targetNamespace = rootElement.attributes
        .firstWhere((p0) => p0.name.toString() == 'xmlns');

    final modelInfo = ModelInfo(
      name: modelName,
      url: Uri.parse(targetNamespace.value),
      contextInfo: [],
    );

    // Process complex types within the XSD
    for (final complexType in rootElement.findAllElements('complexType')) {
      final name = complexType.attributes
          .firstWhere((p0) => p0.name.toString() == 'name')
          .value;
      if (name == 'CodeableConcept' || name == 'Quantity') {
        // Add these basic types directly to contextInfo
        modelInfo.contextInfo.add(ContextInfo(
          name: name,
          contextType: NamedTypeSpecifier(
            namespace: QName.fromNamespace(
              targetNamespace.value,
              name,
            ),
          ),
        ));
      } else {
        // Handle complex types
        final contextType = NamedTypeSpecifier(
          namespace: QName.fromNamespace(
            targetNamespace.value,
            name,
          ),
        );

        // Iterate through elements within the complex type
        for (final element in complexType.findAllElements('*')) {
          final elementName = element.getAttribute('name');
          final elementType = element.getAttribute('type');

          // Skip elements without a name or type attribute
          if (elementName == null || elementType == null) {
            continue;
          }

          // Create ContextInfo for each element and add it to contextInfo
          modelInfo.contextInfo.add(ContextInfo(
            name: elementName,
            contextType: contextType,
          ));
        }
      }
    }

    return modelInfo;
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
