import 'dart:io';

Future<void> main() async {
  final fileString = await File('expression.dart').readAsString();
  final fileStrings = fileString.split('\n');
  final List<int> lineNumbers = [];
  for (var i = 0; i < fileStrings.length; i++) {
    if (fileStrings[i].startsWith('class')) {
      lineNumbers.add(i);
    }
  }
  final List<String> classes = [];
  for (var i = 0; i < lineNumbers.length - 1; i++) {
    var start = lineNumbers[i] - 1;
    var end = lineNumbers[i + 1] - 1;
    while (fileStrings[start].startsWith('//')) {
      start--;
    }
    while (fileStrings[end].startsWith('//')) {
      end--;
    }
    classes.add(fileStrings.sublist(start, end).join('\n'));
  }
  for (final file in classes) {
    final split = file.split('class ').last;
    final spaceIndex = split.indexOf(' ');
    final className = split.substring(0, spaceIndex);
    await File('${className.snakeCase.replaceFirst("_", "")}.dart')
        .writeAsString(file);
  }
}

extension SnakeCase on String {
  String get snakeCase => replaceAllMapped(
      RegExp(r'[A-Z]'), (match) => '_${match.group(0)?.toLowerCase()}');
}
