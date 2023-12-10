import 'dart:convert';
import 'dart:io';

import 'package:antlr4/antlr4.dart';

import '../../cql.dart';

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
  print('$indent${ctx.runtimeType} ${ctx.text} ${ctx.toString()}');
  for (var i = 0; i < ctx.childCount; i++) {
    final child = ctx.getChild(i);
    if (child != null) {
      printTree(ctx.getChild(i)!, '$indent  ');
    }
  }
}

Future<void> main() async {
  final librariesAndDefinitionsDir = Directory('../libraries_and_definitions');
  final librariesAndDefinitionsFiles = librariesAndDefinitionsDir.listSync();
  var i = 0;
  for (final file in librariesAndDefinitionsFiles) {
    if (file is File) {
      i++;
      print(file.path);
      final pathExpression = await file.readAsString();
      final parsed = parse(pathExpression);
      // final parsed = parse(simpleCql);
      final visitor = cqlBaseVisitor();
      visitor.visit(parsed);
      File('result.json').writeAsStringSync(jsonPrettyPrint(visitor.result));
      if (i == 2) {
        break;
      }
    }
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);

String prettyPrintJson(Map<String, dynamic> map) => jsonPrettyPrint(map);

final simpleCql = '''
library ChlamydiaScreening_CDS_UsingCommon version '2'

using QUICK

include ChlamydiaScreening_Common version '2' called Common

codesystem "SNOMED": 'http://snomed.info/sct'

valueset "Reason for not performing Chlamydia Screening": 'TBD'
''';
