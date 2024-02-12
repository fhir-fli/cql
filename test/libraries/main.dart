import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:collection/collection.dart';
import 'package:cql/cql.dart';

import 'cql_list.dart';

const cqlDir = 'test/libraries/cql/';
const jsonDir = 'test/libraries/json/';
Future<void> main() async {
  for (final fileName in cqlList) {
    final pathExpression = await File('$cqlDir$fileName').readAsString();
    final json =
        jsonDecode(await File('$jsonDir$fileName.json').readAsString());
    final parserAndErrors = parse(pathExpression);
    final parser = parserAndErrors.parser;

    try {
      final visitor = CqlBaseVisitor();
      visitor.visit(parser.library_());
      final errors = parserAndErrors.errorListener.errors
          .map((e) => e.copyWith(
              libraryId: visitor.library.identifier?.id,
              libraryVersion: visitor.library.identifier?.version))
          .toList();
      visitor.library.annotation ??= [];
      visitor.library.annotation!.addAll(errors);
      print(const DeepCollectionEquality().equals(json, visitor.result));
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
    }
  }
}

CqlParsersAndErrors parse(String pathExpression) {
  final input = InputStream.fromString(pathExpression);
  final lexer = cqlLexer(input);
  final tokens = CommonTokenStream(lexer);
  final parser = cqlParser(tokens);
  final errorListener = ElmErrorListener();
  parser.addErrorListener(errorListener);
  parser.buildParseTree = true;
  return CqlParsersAndErrors(parser, errorListener);
}

class CqlParsersAndErrors {
  final ElmErrorListener errorListener;
  final cqlParser parser;

  CqlParsersAndErrors(this.parser, this.errorListener);
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
