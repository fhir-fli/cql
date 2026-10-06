import 'package:antlr4/antlr4.dart';
// BitSet is not exported from the antlr4 barrel.
// ignore: implementation_imports
import 'package:antlr4/src/util/bit_set.dart';

import 'package:cql/src/internal.dart';

class ElmErrorListener implements ErrorListener {
  /// Every syntax or semantic error the parser reported, as the ELM
  /// `CqlToElmError` annotation the reference translator writes (library.xsd
  /// CqlToElmError); it was this package's own `ErrorAnnotation` until
  /// 2026-10-06, which callers filtering on `CqlToElmError` did not see.
  final List<CqlToElmError> errors = [];

  @override
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

  @override
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

  @override
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
    //     configs.toString(); // Might contain the conflicting alternatives

    // // Create a more informative error message
    // String errorMessage =
    //     "Context sensitivity detected in rule '$ruleNames' "
    //     "at Line $startIndex to $stopIndex\n"
    //     "Conflicting alternatives: $conflictingAlts";

    // errors.add(ErrorAnnotation(
    //     startLine: startIndex,
    //     endLine: stopIndex,
    //     message: errorMessage,
    //     errorType: 'ContextSensitivity',
    //     errorSeverity: 'Error'));
  }

  @override
  void syntaxError(
    Recognizer<ATNSimulator> recognizer,
    Object? offendingSymbol,
    int? line,
    int charPositionInLine,
    String msg,
    RecognitionException<IntStream>? e,
  ) {
    errors.add(
      CqlToElmError(
        startLine: line,
        startChar: charPositionInLine,
        endLine: line,
        endChar: charPositionInLine + 1,
        message: msg,
        errorType: ErrorType.syntax,
        errorSeverity: ErrorSeverity.error,
      ),
    );
  }

  void semanticError(
    Recognizer<ATNSimulator> recognizer,
    Object? offendingSymbol,
    int? line,
    int charPositionInLine,
    String msg,
    RecognitionException<IntStream>? e,
  ) {
    errors.add(
      CqlToElmError(
        startLine: line,
        startChar: charPositionInLine,
        endLine: line,
        endChar: charPositionInLine + 1,
        message: msg,
        errorType: ErrorType.semantic,
        errorSeverity: ErrorSeverity.error,
      ),
    );
  }
}
