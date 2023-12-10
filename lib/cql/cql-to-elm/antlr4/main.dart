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

final cqlExpression = '''
library ChlamydiaScreening_CDS_UsingCommon version '2'

using QUICK

include ChlamydiaScreening_Common version '2' called Common

codesystem "SNOMED": 'http://snomed.info/sct'

valueset "Reason for not performing Chlamydia Screening": 'TBD'
''';

Future<void> main() async {
  // final parsed = parse(cqlExpression);
  // printTree(parsed);
  // final librariesDir = Directory('../libraries');
  // final librariesFiles = librariesDir.listSync();
  // for (final file in librariesFiles) {
  //   if (file is File) {
  //     print(file.path);
  //     final pathExpression = await file.readAsString();
  //     final parsed = parse(pathExpression);
  //     printTree(parsed);
  //   }
  // }
  // final definitionsDir = Directory('../definitions');
  // final definitionsFiles = definitionsDir.listSync();
  // int i = 0;
  // for (final file in definitionsFiles) {
  //   if (file is File) {
  //     print('$i: ${file.path}');
  //     i++;
  //     final pathExpression = await file.readAsString();
  //     final parsed = parse(pathExpression);
  //     printTree(parsed);
  //   }
  // }
  // final librariesAndDefinitionsDir = Directory('../libraries_and_definitions');
  // final librariesAndDefinitionsFiles = librariesAndDefinitionsDir.listSync();
  // for (final file in librariesAndDefinitionsFiles) {
  //   if (file is File) {
  // print(file.path);
  // final pathExpression = await file.readAsString();
  // final response = await post(
  //   Uri.parse(
  //       'https://cql-translation-service-rzosf74zba-uc.a.run.app/cql/translator'),
  //   headers: {
  //     'Content-Type': 'application/cql',
  //     'Accept': 'application/elm+json',
  //   },
  //   body: pathExpression,
  // );
  // print(response.body);
  // await File(file.path
  //         .replaceAll(
  //             'libraries_and_definitions', 'libraries_and_definitions_json')
  //         .replaceAll('.cql', '.json'))
  //     .writeAsString(response.body);
  // final parsed = parse(pathExpression);
  final parsed = parse(cqlExpression);
  final visitor = cqlBaseVisitor();
  visitor.visit(parsed);
  print(visitor.library.toJson());
  // printTree(parsed);
  // }
  // }
}
