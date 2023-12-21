import 'dart:convert';
import 'dart:io';

import 'package:xml2json/xml2json.dart';

import '../../cql.dart';

class QdmModelInfoReader implements ModelInfoReader {
  ModelInfo _modelInfo(String modelContents) {
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
