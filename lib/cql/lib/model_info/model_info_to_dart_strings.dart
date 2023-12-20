import 'dart:io';

Future<void> main() async {
  final Directory directory = Directory('model_info_xml');
  final List<File> files = directory.listSync().whereType<File>().toList();
  for (final file in files) {
    if (file.path.endsWith('.xml')) {
      var fileString = await file.readAsString();
      fileString =
          'const ${file.path.split('/').last.replaceAll('.xml', '')} = r\'\'\'$fileString\'\'\';';
      File(file.path
              .replaceAll('.xml', '.dart')
              .replaceAll('model_info_xml', 'model_info_dart'))
          .writeAsString(fileString);
    }
  }
}
