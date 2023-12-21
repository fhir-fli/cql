import 'dart:convert';
import 'dart:io';

import '../../cql.dart';

Future<void> main() async {
  final dir = Directory('model_info_xml');
  final files = dir.listSync();
  final StandardModelInfoReader reader = StandardModelInfoReader();
  for (final file in files) {
    final fileString = await File(file.path).readAsString();
    final modelInfo = reader.read(fileString);
    final json = modelInfo.toJson();
    final jsonPretty = jsonPrettyPrint(json);
    await File(file.path
            .replaceAll('.xml', '.json')
            .replaceAll('model_info_xml', 'model_info_json'))
        .writeAsString(jsonPretty);
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
