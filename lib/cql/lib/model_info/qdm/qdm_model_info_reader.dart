import 'dart:convert';
import 'dart:io';

import 'package:xml/xml.dart';
import 'package:xml2json/xml2json.dart';

import '../../cql.dart';

class QdmModelInfoReader implements ModelInfoReader {
  ModelInfo _modelInfo(String modelContents) {
    final document = XmlDocument.parse(modelContents);
    final rootElement = document.rootElement;
    final Xml2Json myTransformer = Xml2Json();
    myTransformer.parse(modelContents);
    final String json = myTransformer.toBadgerfish();
    final Map<String, dynamic> map = jsonDecode(json) as Map<String, dynamic>;
    final newMap = ModelInfoReader.removeAts(map);

    if (newMap['modelInfo'] is Map) {
      final properMap = jsonDecode(jsonEncode((newMap['modelInfo'] as Map)));
      try {
        final modelInfo = ModelInfo.fromJson(properMap);
        return modelInfo;
      } catch (e) {
        print(e);
        rethrow;
      }
    }
    throw Exception('Invalid modelInfo');

    // // Extract the target namespace and model name
    // final namespace = rootElement.attributes
    //     .firstWhere((p0) => p0.name.toString() == 'targetNamespace');
    // final modelName = filePath.split('/').last.replaceAll('.qdm', '');
    // final targetNamespace = rootElement.attributes
    //     .firstWhere((p0) => p0.name.toString() == 'xmlns');

    // final modelInfo = ModelInfo(
    //   name: modelName,
    //   url: Uri.parse(targetNamespace.value),
    //   contextInfo: [],
    // );

    // // Process complex types within the XSD
    // for (final complexType in rootElement.findAllElements('complexType')) {
    //   final name = complexType.attributes
    //       .firstWhere((p0) => p0.name.toString() == 'name')
    //       .value;
    //   if (name == 'CodeableConcept' || name == 'Quantity') {
    //     // Add these basic types directly to contextInfo
    //     modelInfo.contextInfo.add(ContextInfo(
    //       name: name,
    //       contextType: NamedTypeSpecifier(
    //         namespace: QName.fromNamespace(
    //           targetNamespace.value,
    //           name,
    //         ),
    //       ),
    //     ));
    //   } else {
    //     // Handle complex types
    //     final contextType = NamedTypeSpecifier(
    //       namespace: QName.fromNamespace(
    //         targetNamespace.value,
    //         name,
    //       ),
    //     );

    //     // Iterate through elements within the complex type
    //     for (final element in complexType.findAllElements('*')) {
    //       final elementName = element.getAttribute('name');
    //       final elementType = element.getAttribute('type');

    //       // Skip elements without a name or type attribute
    //       if (elementName == null || elementType == null) {
    //         continue;
    //       }

    //       // Create ContextInfo for each element and add it to contextInfo
    //       modelInfo.contextInfo.add(ContextInfo(
    //         name: elementName,
    //         contextType: contextType,
    //       ));
    //     }
    //   }
    // }

    // return modelInfo;
  }

  /// Replace this method with your actual XML parsing logic.
  @override
  ModelInfo read(String xmlContent) => _modelInfo(xmlContent);

  /// Reads model information from a file. throws IOException
  @override
  ModelInfo readFromFile(File file) {
    throw UnimplementedError();
  }

  /// Reads model information from a reader. throws IOException
  @override
  ModelInfo readFromFilePath(String filePath) {
    throw UnimplementedError();
  }

  /// Reads model information from an input stream. throws IOException
  @override
  ModelInfo readFromStream(Stream stream) {
    throw UnimplementedError();
  }

  /// Reads model information from a URL. throws IOException
  @override
  ModelInfo readFromUrl(Uri url) {
    throw UnimplementedError();
  }

  /// Reads model information from a URI. throws IOException
  @override
  ModelInfo readFromUri(Uri uri) {
    throw UnimplementedError();
  }

  /// Reads model information from a string. throws IOException
  @override
  ModelInfo readFromString(String string) {
    throw UnimplementedError();
  }
}
