import 'dart:convert';

import 'package:cql/src/internal.dart';
import 'package:xml2json/xml2json.dart';

/// The standard XML [ModelInfoReader]: converts ModelInfo XML to JSON via
/// Badgerfish and deserializes it into a [ModelInfo].
class StandardModelInfoReader implements ModelInfoReader {
  @override
  ModelInfo read(String xmlContent) => _modelInfo(xmlContent);

  ModelInfo _modelInfo(String modelContents) {
    final myTransformer = Xml2Json()..parse(modelContents);
    final json = myTransformer.toBadgerfish();
    final map = jsonDecode(json) as Map<String, dynamic>;
    final withoutAts = ModelInfoReader.removeAts(map) as Map;
    final newMap = ModelInfoReader.removeModelName(
      withoutAts,
      (withoutAts['modelInfo'] as Map)['name'] as String,
    ) as Map;

    if (newMap['modelInfo'] is Map) {
      final properMap = jsonDecode(jsonEncode(newMap['modelInfo'] as Map));
      try {
        final modelInfo = ModelInfo.fromJson(properMap as Map<String, dynamic>);
        return modelInfo;
      } catch (e) {
        rethrow;
      }
    }
    throw Exception('Invalid modelInfo');
  }
}
