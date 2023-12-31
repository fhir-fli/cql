import 'dart:convert';
import 'dart:developer';

import 'package:antlr4/antlr4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'cql-to-elm/cql_to_elm.dart';

const bool print = true;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
                onPressed: (() => parseFile(context)),
                child: const SizedBox(
                    height: 200,
                    width: 200,
                    child: Center(
                      child: Text('Press me', style: TextStyle(fontSize: 45)),
                    ))),
          ),
        ),
      ),
    );
  }
}

void parseFile(BuildContext context) async {
  var assetsFile =
      await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
  final Map<String, dynamic> manifestMap = json.decode(assetsFile);
  manifestMap
      .removeWhere((key, value) => !key.contains('libraries_and_definitions/'));
  for (final file in manifestMap.keys) {
    final pathExpression = await rootBundle.loadString(file);
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
      if (print) {
        log(jsonEncode(visitor.result));
      }
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
