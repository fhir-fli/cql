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

  final visitor = CqlBaseVisitor<dynamic>(CqlLibrary())
    ..visit(parser.library_());
  final library = visitor.library;

  final errors = errorListener.errors
      .map(
        (e) => e.copyWith(
          libraryId: library.identifier?.id,
          libraryVersion: library.identifier?.version,
        ),
      )
      .toList();
  (library.annotation ??= []).addAll(errors);

  if (libraryManager != null) {
    library.libraryManager = libraryManager;
  }
  return library;
}
