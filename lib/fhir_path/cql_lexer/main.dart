import 'dart:io';

import 'package:antlr4/antlr4.dart';

import 'cqlLexer.dart';
import 'cqlParser.dart';

ParseTree parse(String pathExpression) {
  final input = InputStream.fromString(pathExpression);
  final lexer = cqlLexer(input);
  final tokens = CommonTokenStream(lexer);
  final parser = cqlParser(tokens);
  parser.addErrorListener(DiagnosticErrorListener());
  parser.buildParseTree = true;
  return parser.library_();
}

void printTree(ParseTree? ctx, [String indent = '']) {
  if (ctx == null) return;
  print('$indent${ctx.runtimeType} ${ctx.text}');
  for (var i = 0; i < ctx.childCount; i++) {
    final child = ctx.getChild(i);
    if (child != null) {
      printTree(ctx.getChild(i)!, '$indent  ');
    }
  }
}

Future<void> main() async {
  final librariesDir = Directory('../libraries');
  final librariesFiles = librariesDir.listSync();
  for (final file in librariesFiles) {
    if (file is File) {
      print(file.path);
      final pathExpression = await file.readAsString();
      final parsed = parse(pathExpression);
      printTree(parsed);
    }
  }
  final definitionsDir = Directory('../definitions');
  final definitionsFiles = definitionsDir.listSync();
  int i = 0;
  for (final file in definitionsFiles) {
    if (file is File) {
      print('$i: ${file.path}');
      i++;
      final pathExpression = await file.readAsString();
      final parsed = parse(pathExpression);
      printTree(parsed);
    }
  }
  final librariesAndDefinitionsDir = Directory('../libraries_and_definitions');
  final librariesAndDefinitionsFiles = librariesAndDefinitionsDir.listSync();
  for (final file in librariesAndDefinitionsFiles) {
    if (file is File) {
      print(file.path);
      final pathExpression = await file.readAsString();
      final parsed = parse(pathExpression);
      printTree(parsed);
    }
  }
}
