import 'dart:convert';
import 'dart:developer';

import 'package:antlr4/antlr4.dart';
import 'package:collection/collection.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'cql-to-elm/cql_to_elm.dart';
import 'results/results.dart';

const bool print = false;

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
                      child: Text('Press\nme',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 45)),
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
  manifestMap.removeWhere((key, value) => !key.contains('cql/'));

  for (final file in manifestMap.keys) {
    final pathExpression = await rootBundle.loadString(file);
    final json =
        jsonDecode(await rootBundle.loadString(file.replaceAll('cql', 'json')));
    final answers = results[file.split("/").last];

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
      var jsonLibrary = json['library'];
      (jsonLibrary as Map<String, dynamic>).remove('annotation');
      var resultLibrary = visitor.result['library'];
      (resultLibrary as Map<String, dynamic>).remove('annotation');
      if (print) {
        log(jsonEncode(visitor.result));
      }
      log('${file.split("/").last} Elm is equal: ${const DeepCollectionEquality().equals(jsonLibrary, resultLibrary).toString()}');
      // if (file.contains('03')) {
      //   log(jsonEncode({'library': resultLibrary}));
      // }
      bool areEqual = true;
      final results = visitor.library.execute();
      if (results is Map<String, dynamic>) {
        results.remove('startTimestamp');
        results.forEach((key, value) {
          final result = value;
          final answer = answers?[key];
          // log('$key: $value (${value.runtimeType}) == '
          //     '$answer (${answer.runtimeType})');
          if (result != answer) {
            if (result is List && answer is List) {
              if (!(const DeepCollectionEquality().equals(result, answer))) {
                log('$key: $result (${result.runtimeType}) != '
                    '$answer (${answer.runtimeType})');
                areEqual = false;
              }
            } else if (result is Map && answer is Map) {
              if (!(const DeepCollectionEquality().equals(result, answer))) {
                if (result.keys.length != answer.keys.length) {
                  areEqual = false;
                } else {
                  for (final key in result.keys) {
                    if (!answer.containsKey(key)) {
                      areEqual = false;
                    } else if (result[key] != answer[key]) {
                      areEqual = false;
                    } else {
                      answer.remove(key);
                    }
                  }
                  if (answer.isNotEmpty) {
                    areEqual = false;
                  }
                }
              }
            } else {
              log('$key: $result (${result.runtimeType}) != '
                  '$answer (${answer.runtimeType})');
              areEqual = false;
            }
          }
          if (result is FhirTime) {
            log(result.toString());
            log(result.value ?? '');
          }
          if (answer is FhirTime) {
            log(answer.toString());
            log(answer.value ?? '');
          }
          // log('$key: ${results[key]} == ${answers?[key]}');
          if (results[key] != answers?[key]) {
            areEqual = false;
          }
        });
      }
      log('${file.split("/").last} Results are equal: $areEqual');
    } catch (e, s) {
      log(file);
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
