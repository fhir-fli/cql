import 'dart:convert';
import 'dart:io';

import 'package:cql/cql.dart';

Future<void> main() async {
  final librariesAndDefinitionsDir =
      Directory('../libraries_and_definitions_json');
  final librariesAndDefinitionsFiles = librariesAndDefinitionsDir.listSync();
  for (final file in librariesAndDefinitionsFiles) {
    if (file is File) {
      print(file.path);
      final pathExpression = jsonDecode(await file.readAsString());
      if (pathExpression['library'] != null) {
        final newFileString = jsonPrettyPrint(
            {'library': Library.fromJson(pathExpression['library']).toJson()});
        await File(file.path.replaceAll('.json', '2.json'))
            .writeAsString(newFileString);
      }
    }
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
