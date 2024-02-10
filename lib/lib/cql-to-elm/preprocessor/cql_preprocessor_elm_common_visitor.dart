// import 'package:antlr4/antlr4.dart';

// import '../../cql.dart';

// class CqlPreprocessorElmCommonVisitor extends cqlBaseVisitor {
//   bool implicitContextCreated = false;
//   String currentContext = 'Unfiltered';
//   final List<ParseTree> chunks = <ParseTree>[];
//   TokenStream? tokenStream;
//   final LibraryInfo libraryInfo = LibraryInfo();
//   bool annotate = false;
//   bool detailedErrors = false;
//   int nextLocalId = 1;
//   bool locate = false;
//   bool resultTypes = false;
//   bool dateRangeOptimization = false;
//   bool methodInvocation = true;
//   bool fromKeywordRequired = false;
//   final List<Expression> expressions = [];
//   bool includeDeprecatedElements = false;

//   CqlPreprocessorElmCommonVisitor();

//   CqlPreprocessorElmCommonVisitor.withTokenStream(this.tokenStream);

//   bool pushChunk(ParseTree chunk) {
//     try {
//       chunks.add(chunk);
//       return true;
//     } catch (e) {
//       return false;
//     }
//   }

//   void popChunk() {
//     if (chunks.isNotEmpty) {
//       chunks.removeLast();
//     }
//   }

//   bool getImplicitContextCreated() {
//     return implicitContextCreated;
//   }

//   void setImplicitContextCreated(bool implicitContextCreated) {
//     this.implicitContextCreated = implicitContextCreated;
//   }

//   String getCurrentContext() {
//     return currentContext;
//   }

//   void setCurrentContext(String currentContext) {
//     this.currentContext = currentContext;
//   }

//   String saveCurrentContext(String currentContext) {
//     String saveContext = this.currentContext;
//     this.currentContext = currentContext;
//     return saveContext;
//   }

//   void setTokenStream(TokenStream theTokenStream) {
//     tokenStream = theTokenStream;
//   }

//   Object visit(ParseTree tree) {
//     bool pushedChunk = pushChunk(tree);
//     Object? o;
//     try {
//       try {
//         o = super.visit(tree);
//       } on CqlIncludeException catch (e) {
//         CqlCompilerException translatorException =
//             CqlCompilerException(e.message, getTrackBack(tree), e);
//         if (translatorException.locator == null) {
//           throw translatorException;
//         }
//         recordParsingException(translatorException);
//       } on CqlCompilerException catch (e) {
//         if (e.locator == null) {
//           e.setLocator(getTrackBack(tree));
//         }
//         libraryBuilder.recordParsingException(e);
//       } catch (e) {
//         CqlCompilerException? ex;
//         if (e.message == null) {
//           ex = CqlInternalException(
//               "Internal translator error.", getTrackBack(tree), e);
//         } else {
//           ex = CqlSemanticException(e.message, getTrackBack(tree), e);
//         }

//         Exception? rootCause = libraryBuilder.determineRootCause();
//         if (detailedErrors) {
//           libraryBuilder.recordParsingException(ex);
//         }
//         o = of.createNull();
//       }

//       if (o is Trackable && !(tree is cqlParser.LibraryContext)) {
//         this.track(o, tree);
//       }
//       if (o is Expression) {
//         addExpression(o);
//       }

//       return o;
//     } finally {
//       popChunk(tree, o, pushedChunk);
//       processTags(tree, o);
//     }
//   }
// }
