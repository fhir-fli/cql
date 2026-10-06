import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

/// Translates CQL [source] into an executable [CqlLibrary] (CQL -> ELM).
///
/// This is the public entry point for parsing CQL — the ANTLR-generated
/// lexer/parser behind it is internal API. Translation errors are recorded
/// as annotations on the returned library (mirroring the reference
/// translator), so callers can inspect `library.annotation` before
/// executing.
CqlLibrary libraryFromCql(String source, {LibraryManager? libraryManager}) {
  final input = InputStream.fromString(source);
  final lexer = cqlLexer(input);
  final tokens = CommonTokenStream(lexer);
  final parser = cqlParser(tokens);
  final errorListener = ElmErrorListener();
  parser
    ..addErrorListener(errorListener)
    ..buildParseTree = true;

  final tree = parser.library_();
  // Syntax errors go on the library before the visit: a visitor meeting a
  // node the parser built while recovering stands a Null in for it
  // (CqlBaseVisitor.byContext) instead of crashing on a cast.
  final library = CqlLibrary()..annotation = [...errorListener.errors];
  CqlBaseVisitor<dynamic>(library).visit(tree);

  // Stamp every error with the library's identity, now that it is known.
  library.annotation = library.annotation!
      .map(
        (a) => a is CqlToElmError && a.libraryId == null
            ? CqlToElmError(
                message: a.message,
                errorType: a.errorType,
                errorSeverity: a.errorSeverity,
                libraryId: library.identifier?.id,
                libraryVersion: library.identifier?.version,
                startLine: a.startLine,
                startChar: a.startChar,
                endLine: a.endLine,
                endChar: a.endChar,
                targetIncludeLibrarySystem: a.targetIncludeLibrarySystem,
                targetIncludeLibraryId: a.targetIncludeLibraryId,
                targetIncludeLibraryVersionId: a.targetIncludeLibraryVersionId,
              )
            : a,
      )
      .toList();

  if (libraryManager != null) {
    library.libraryManager = libraryManager;
  }
  return library;
}
