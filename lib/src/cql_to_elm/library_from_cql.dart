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
  _attachCommentTags(tree, tokens, library);

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

/// CQL Developer's Guide, Tags: "Within multi-line comments, CQL supports
/// the ability to define tags that will be associated with the declaration
/// on which they appear. Tags are defined in comments immediately preceding
/// the declaration to which they apply using the @ symbol, followed by a
/// valid, unquoted identifier, optionally followed by a colon (:) and a
/// string value. […] The contents of the resulting tag will be whatever
/// comes after the tag definition until the next tag or the end of the
/// comment-block, whatever comes first." The reference translator writes
/// them as one Annotation on the define, one Tag per @tag (FHIRCommon: 35
/// of its 36 defines; QICoreCommon: 45 of 46). The comments sit on the
/// lexer's hidden channel, and until 2026-10-06 the translator never read
/// them.
void _attachCommentTags(
  LibraryContext tree,
  CommonTokenStream tokens,
  CqlLibrary library,
) {
  final defs = library.statements?.def;
  if (defs == null) return;
  // Overloaded functions share a name: the nth declaration with a name
  // annotates the nth define with it.
  final seen = <String, int>{};
  for (final statement in tree.statements()) {
    final ctx =
        statement.expressionDefinition() ?? statement.functionDefinition();
    if (ctx == null) continue;
    final rawName = ctx is ExpressionDefinitionContext
        ? ctx.identifier()?.text
        : (ctx as FunctionDefinitionContext)
            .identifierOrFunctionIdentifier()
            ?.text;
    if (rawName == null) continue;
    final name = rawName.startsWith('"') && rawName.endsWith('"')
        ? rawName.substring(1, rawName.length - 1)
        : rawName;
    final startIndex = ctx.start?.tokenIndex;
    if (startIndex == null) continue;
    Token? comment;
    for (final t in tokens.getHiddenTokensToLeft(startIndex) ?? <Token>[]) {
      if (t.type == cqlLexer.TOKEN_COMMENT) comment = t;
    }
    final n = seen[name] ?? 0;
    seen[name] = n + 1;
    if (comment == null) continue;
    final tags = commentTags(comment.text ?? '');
    if (tags.isEmpty) continue;
    final matches = defs.where((d) => d.name == name).toList();
    if (n >= matches.length) continue;
    (matches[n].annotation ??= <CqlToElmBase>[]).add(Annotation(t: tags));
  }
}

/// The tags in one multi-line comment, per the rule quoted above. A tag
/// with nothing after it has no value.
List<Tag> commentTags(String comment) {
  var body = comment;
  if (body.startsWith('/*')) body = body.substring(2);
  if (body.endsWith('*/')) body = body.substring(0, body.length - 2);
  final heads = RegExp('@([A-Za-z_][A-Za-z0-9_]*):?').allMatches(body).toList();
  final tags = <Tag>[];
  for (var i = 0; i < heads.length; i++) {
    final end = i + 1 < heads.length ? heads[i + 1].start : body.length;
    final value = body.substring(heads[i].end, end).trim();
    tags.add(Tag(name: heads[i].group(1), value: value.isEmpty ? null : value));
  }
  return tags;
}
