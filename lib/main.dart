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
    final resultsJson = results[file.split("/").last];

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
      if (file.contains('03')) {
        log(jsonEncode({'library': resultLibrary}));
      }
      bool areEqual = true;
      // final results = visitor.library.execute();
      // if (results is Map<String, dynamic>) {
      //   results.remove('startTimestamp');
      //   results.forEach((key, value) {
      //     final resultsValue = results[key];
      //     final resultsJsonValue = resultsJson?[key];
      //     if (resultsValue != resultsJsonValue) {
      //       if (resultsValue is List && resultsJsonValue is List) {
      //         if (!(const DeepCollectionEquality()
      //             .equals(resultsValue, resultsJsonValue))) {
      //           log('$key: $resultsValue (${resultsValue.runtimeType}) != '
      //               '$resultsJsonValue (${resultsJsonValue.runtimeType})');
      //           areEqual = false;
      //         }
      //       } else if (resultsValue is Map && resultsJsonValue is Map) {
      //         if (!(const DeepCollectionEquality()
      //             .equals(resultsValue, resultsJsonValue))) {
      //           log('$key: $resultsValue (${resultsValue.runtimeType}) != '
      //               '$resultsJsonValue (${resultsJsonValue.runtimeType})');
      //           areEqual = false;
      //         }
      //       } else {
      //         log('$key: $resultsValue (${resultsValue.runtimeType}) != '
      //             '$resultsJsonValue (${resultsJsonValue.runtimeType})');
      //         areEqual = false;
      //       }
      //     }
      //     // if (resultsValue is FhirTime) {
      //     //   log(resultsValue.toString());
      //     //   log(resultsValue.value ?? '');
      //     // }
      //     // if (resultsJsonValue is FhirTime) {
      //     //   log(resultsJsonValue.toString());
      //     //   log(resultsJsonValue.value ?? '');
      //     // }
      //     // log('$key: ${results[key]} == ${resultsJson?[key]}');
      //     if (results[key] != resultsJson?[key]) {
      //       areEqual = false;
      //     }
      //   });
      // }
      // log('${file.split("/").last} Results are equal: $areEqual');
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
