import 'dart:convert';
import 'dart:developer';

import 'package:antlr4/antlr4.dart';
import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'cql.dart';
import 'inputs/inputs.dart';

const bool print = false;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    parseFile(context);
    return Container();
  }
}

void parseFile(BuildContext context) {
  DefaultAssetBundle.of(context)
      .loadString('AssetManifest.json')
      .then((assetsFile) {
    final Map<String, dynamic> manifestMap = json.decode(assetsFile);
    manifestMap.removeWhere((key, value) => !key.contains('cql/'));

    int i = 0;
    for (final file in manifestMap.keys) {
      i++;
      if (i > 4) {
        break;
      }
      rootBundle.loadString(file).then((pathExpression) {
        rootBundle
            .loadString(file.replaceAll('cql', 'json'))
            .then((jsonString) {
          final json = jsonDecode(jsonString);
          final answers = results[file.split("/").last];

          final dynamic tempContext = contexts[file.split("/").last];
          final Map<String, dynamic>? context =
              tempContext is Map<String, dynamic> ? tempContext : null;

          final parserAndErrors = parse(pathExpression);
          final parser = parserAndErrors.parser;

          try {
            final visitor = CqlBaseVisitor(CqlLibrary());
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
            // if (print) {
            // if (file.contains('05')) {
            //   log(jsonEncode(visitor.result));
            // }
            // log(file);
            // throw 'stop';
            // }
            log('${file.split("/").last} Elm is equal: ${const DeepCollectionEquality().equals(jsonLibrary, resultLibrary).toString()}');
            if (file.contains('04')) {
              log(jsonEncode({'library': resultLibrary}));
            }
            bool areEqual = true;
            String equalReason = '';
            final results = visitor.library.execute(context);
            if (results is Map<String, dynamic>) {
              results.remove('startTimestamp');
              results.remove('library');
              results.forEach((key, value) {
                final result = value;
                final answer = answers?[key];
                if (result != answer) {
                  if (result is List && answer is List) {
                    if (!(const DeepCollectionEquality()
                        .equals(result, answer))) {
                      if (jsonEncode(result) != jsonEncode(answer)) {
                        areEqual = false;
                        equalReason +=
                            'LISTS: $key: $result (${result.runtimeType}) != '
                            '$answer (${answer.runtimeType})\n';
                      }
                    }
                  } else if (result is Map && answer is Map) {
                    final tempAnswer = Map.from(answer);
                    if (!(const DeepCollectionEquality()
                        .equals(result, tempAnswer))) {
                      if (result.keys.length != tempAnswer.keys.length) {
                        areEqual = false;
                        equalReason += 'unequal keys length (for key: $key)\n'
                            'result: ${result.keys}\n'
                            'answer: ${tempAnswer.keys}\n';
                      } else {
                        for (final key in result.keys) {
                          if (!tempAnswer.containsKey(key)) {
                            areEqual = false;
                            equalReason += 'missing key: $key\n';
                          } else if (result[key] != tempAnswer[key]) {
                            areEqual = false;
                            equalReason +=
                                '${result[key]} != ${tempAnswer[key]}\n';
                          } else {
                            tempAnswer.remove(key);
                          }
                        }
                        if (tempAnswer.isNotEmpty) {
                          areEqual = false;
                          equalReason += 'extra keys: ${tempAnswer.keys}\n';
                        }
                      }
                    }
                  } else {
                    if (result.runtimeType == answer.runtimeType &&
                        result is FhirDateTimeBase &&
                        answer is FhirDateTimeBase) {
                      if (result != answer) {
                        final difference = result.valueDateTime
                            ?.difference(answer.valueDateTime!);
                        equalReason +=
                            '$key: $result differs by ${difference?.inMilliseconds} '
                            'ms from $answer\n';
                        areEqual = false;
                      }
                    } else if (result.runtimeType == answer.runtimeType &&
                        result is FhirTime &&
                        answer is FhirTime) {
                      if (result != answer) {
                        final int resultMilliseconds =
                            (result.hour ?? 0) * 3600000 +
                                (result.minute ?? 0) * 60000 +
                                (result.second ?? 0) * 1000 +
                                (result.millisecond ?? 0);
                        final int answerMilliseconds =
                            (answer.hour ?? 0) * 3600000 +
                                (answer.minute ?? 0) * 60000 +
                                (answer.second ?? 0) * 1000 +
                                (answer.millisecond ?? 0);

                        final int differenceMilliseconds =
                            resultMilliseconds - answerMilliseconds;

                        equalReason +=
                            '$key: $result differs by $differenceMilliseconds '
                            'ms from $answer\n';
                        areEqual = false;
                      }
                    } else {
                      equalReason += '$key: $result (${result.runtimeType}) != '
                          '$answer (${answer.runtimeType}\n';
                      areEqual = false;
                    }
                  }
                }
              });
            }
            log('${file.split("/").last} Results are equal: $areEqual\n$equalReason');
          } catch (e, s) {
            log(file);
            log(e.toString());
            log(s.toString());
          }
        });
      });
    }
  });
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
