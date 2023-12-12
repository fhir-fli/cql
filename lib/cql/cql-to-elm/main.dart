import 'dart:convert';
import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:antlr4/src/util/bit_set.dart';

import '../cql.dart';

cqlParserAndErrors parse(String pathExpression) {
  final input = InputStream.fromString(pathExpression);
  final lexer = cqlLexer(input);
  final tokens = CommonTokenStream(lexer);
  final parser = cqlParser(tokens);
  final errorListener = ElmErrorListener();
  parser.addErrorListener(errorListener);
  parser.buildParseTree = true;
  return cqlParserAndErrors(parser, errorListener);
}

class cqlParserAndErrors {
  final cqlParser parser;
  final ElmErrorListener errorListener;

  cqlParserAndErrors(this.parser, this.errorListener);
}

void main() async {
  final librariesAndDefinitionsDir = Directory('libraries_and_definitions');
  final librariesAndDefinitionsFiles = librariesAndDefinitionsDir.listSync();
  for (final file in librariesAndDefinitionsFiles) {
    if (file is File

        //
        // &&
        // file.path.contains('zika-virus-intervention-logic')
        //
        ) {
      print(file.path);
      final pathExpression = await file.readAsString();
      final parserAndErrors = parse(pathExpression);
      final parser = parserAndErrors.parser;

      final visitor = cqlBaseVisitor();
      visitor.visit(parser.library_());
      final errors = parserAndErrors.errorListener.errors
          .map((e) => e.copyWith(
              libraryId: visitor.library.identifier?.id,
              libraryVersion: visitor.library.identifier?.version))
          .toList();
      if (visitor.library.annotation == null) {
        visitor.library.annotation = [];
      }
      visitor.library.annotation!.addAll(errors);

      File(file.path
              .replaceAll(
                  'libraries_and_definitions', 'libraries_and_definitions_json')
              .replaceAll('.cql', '2.json'))
          .writeAsStringSync(jsonPrettyPrint(visitor.result));
    }
  }
}

class ElmErrorListener implements ErrorListener {
  final List<ErrorAnnotation> errors = [];

  @override
  void syntaxError(
      Recognizer<ATNSimulator> recognizer,
      Object? offendingSymbol,
      int? line,
      int charPositionInLine,
      String msg,
      RecognitionException<IntStream>? e) {
    errors.add(ErrorAnnotation(
        startLine: line,
        startChar: charPositionInLine,
        endLine: line,
        endChar: charPositionInLine + 1,
        message: msg,
        errorType: 'SyntaxError',
        errorSeverity: 'Error'));
  }

  void semanticError(
      Recognizer<ATNSimulator> recognizer,
      Object? offendingSymbol,
      int? line,
      int charPositionInLine,
      String msg,
      RecognitionException<IntStream>? e) {
    errors.add(ErrorAnnotation(
        startLine: line,
        startChar: charPositionInLine,
        endLine: line,
        endChar: charPositionInLine + 1,
        message: msg,
        errorType: 'SemanticError',
        errorSeverity: 'Error'));
  }

  void reportContextSensitivity(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    int prediction,
    ATNConfigSet configs,
  ) {
    // // Extract information about the rule names and conflicting alternatives
    // String ruleNames = recognizer.ruleNames[prediction];
    // String conflictingAlts =
    //     configs.toString(); // This might contain the conflicting alternatives

    // // Create a more informative error message
    // String errorMessage = "Context sensitivity detected in rule '$ruleNames' "
    //     "at Line $startIndex to $stopIndex\n"
    //     "Conflicting alternatives: $conflictingAlts";

    // errors.add(ErrorAnnotation(
    //     startLine: startIndex,
    //     endLine: stopIndex,
    //     message: errorMessage,
    //     errorType: 'ContextSensitivity',
    //     errorSeverity: 'Error'));
  }

  void reportAmbiguity(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    bool exact,
    BitSet? ambigAlts,
    ATNConfigSet configs,
  ) {
    // // Extract information about the conflicting alternatives
    // String conflictingAlts = ambigAlts?.toString() ?? "Unknown Alternatives";

    // // Create a more informative error message
    // String errorMessage =
    //     "Ambiguity detected at Line $startIndex to $stopIndex\n"
    //     "Conflicting alternatives: $conflictingAlts\n"
    //     "Exact: $exact";

    // errors.add(ErrorAnnotation(
    //     startLine: startIndex,
    //     endLine: stopIndex,
    //     message: errorMessage,
    //     errorType: 'Ambiguity',
    //     errorSeverity: 'Error'));
  }

  void reportAttemptingFullContext(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    BitSet? conflictingAlts,
    ATNConfigSet configs,
  ) {
    // // Extract information about the conflicting alternatives
    // String conflictingAltsStr =
    //     conflictingAlts?.toString() ?? "Unknown Alternatives";

    // // Create a more informative error message
    // String errorMessage =
    //     "Attempting full context at Line $startIndex to $stopIndex\n"
    //     "Conflicting alternatives: $conflictingAltsStr";

    // errors.add(ErrorAnnotation(
    //     startLine: startIndex,
    //     endLine: stopIndex,
    //     message: errorMessage,
    //     errorType: 'AttemptingFullContext',
    //     errorSeverity: 'Error'));
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);

// cqlParser parse(String pathExpression) {
//   final input = InputStream.fromString(pathExpression);
//   final lexer = cqlLexer(input);
//   final tokens = CommonTokenStream(lexer);
//   final parser = cqlParser(tokens);
//   parser.addErrorListener(ElmErrorListener());
//   parser.buildParseTree = true;
//   print('b');
//   return parser;
// }

// void printTree(ParseTree? ctx, [String indent = '']) {
//   if (ctx == null) return;
//   print('$indent${ctx.runtimeType} ${ctx.text} ${ctx.toString()}');
//   for (var i = 0; i < ctx.childCount; i++) {
//     final child = ctx.getChild(i);
//     if (child != null) {
//       printTree(ctx.getChild(i)!, '$indent  ');
//     }
//   }
// }

// Future<void> main() async {
//   final librariesAndDefinitionsDir = Directory('libraries_and_definitions');
//   final librariesAndDefinitionsFiles = librariesAndDefinitionsDir.listSync();
//   for (final file in librariesAndDefinitionsFiles) {
//     if (file is File && file.path.contains('00_Working')) {
//       print(file.path);
//       final pathExpression = await file.readAsString();
//       print('a');
//       final parser = parse(pathExpression);
//       print('d');
//       final visitor = cqlBaseVisitor();
//       visitor.visit(parser.library_());

//       File(file.path
//               .replaceAll(
//                   'libraries_and_definitions', 'libraries_and_definitions_json')
//               .replaceAll('.cql', '2.json'))
//           .writeAsStringSync(jsonPrettyPrint(visitor.result));
//     }
//   }
// }


// String prettyPrintJson(Map<String, dynamic> map) => jsonPrettyPrint(map);

// final simpleCql = '''
// library ChlamydiaScreening_CDS_UsingCommon version '2'

// using QUICK

// include ChlamydiaScreening_Common version '2' called Common

// codesystem "SNOMED": 'http://snomed.info/sct'

// valueset "Reason for not performing Chlamydia Screening": 'TBD'
// ''';
