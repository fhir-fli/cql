// import 'package:antlr4/antlr4.dart' as antlr;

// import '../../cql.dart';

// class CqlPreprocessorVisitor extends CqlPreprocessorElmCommonVisitor {
//   int lastSourceIndex = -1;

//   CqlPreprocessorVisitor(antlr.TokenStream? tokenStream)
//       : super.withTokenStream(tokenStream);

//   LibraryInfo getLibraryInfo() {
//     return libraryInfo;
//   }

//   void processHeader(antlr.ParseTree ctx, BaseInfo info) {
//     antlr.Interval header;
//     var sourceInterval = ctx.sourceInterval;
//     var beforeDefinition = sourceInterval.a - 1;
//     if (beforeDefinition >= lastSourceIndex) {
//       header = antlr.Interval(lastSourceIndex + 1, sourceInterval.a - 1);
//       lastSourceIndex = sourceInterval.b;

//       info.setHeaderInterval(header);
//       final headerInfo = tokenStream?.getText(header);
//       if (headerInfo != null) {
//         info.setHeader(headerInfo);
//       }
//     }
//   }

//   @override
//   dynamic visitLibrary(LibraryContext ctx) {
//     var lastResult;
//     var identifier = VersionedIdentifier(
//         id: libraryInfo.namespaceName, version: libraryInfo.getVersion());
//     if (libraryInfo.getNamespaceName() != null) {
//       identifier.system = resolveNamespaceUri(
//           libraryInfo.getNamespaceName(), true);

//       .setSystem(libraryBuilder.resolveNamespaceUri(
//           libraryInfo.getNamespaceName(), true));
//     } else if (libraryBuilder.getNamespaceInfo() != null) {
//       identifier.setSystem(libraryBuilder.getNamespaceInfo().getUri());
//     }
//     libraryBuilder.setLibraryIdentifier(identifier);
//     libraryBuilder.beginTranslation();
//     try {
//       for (var i = 0; i < ctx.getChildCount(); i++) {
//         var tree = ctx.getChild(i);
//         var terminalNode = tree is TerminalNode ? tree : null;
//         if (terminalNode != null &&
//             terminalNode.getSymbol().type == cqlLexer.EOF) {
//           continue;
//         }

//         var childResult = visit(tree);
//         lastResult = childResult;
//       }
//       return lastResult;
//     } finally {
//       libraryBuilder.endTranslation();
//     }
//   }

//   @override
//   Object visitLibraryDefinition(LibraryDefinitionContext ctx) {
//     var identifiers = visit(ctx.qualifiedIdentifier()) as List<String>;
//     libraryInfo.setLibraryName(identifiers.removeLast());
//     if (identifiers.isNotEmpty) {
//       libraryInfo.setNamespaceName(identifiers.join('.'));
//     }
//     if (ctx.versionSpecifier() != null) {
//       libraryInfo.setVersion(visit(ctx.versionSpecifier()) as String);
//     }
//     libraryInfo.setDefinition(ctx);
//     processHeader(ctx, libraryInfo);
//     return super.visitLibraryDefinition(ctx);
//   }

//   @override
//   Object visitIncludeDefinition(IncludeDefinitionContext ctx) {
//     var includeDefinition = IncludeDefinitionInfo();
//     var identifiers = visit(ctx.qualifiedIdentifier()) as List<String>;
//     includeDefinition.setName(identifiers.removeLast());
//     if (identifiers.isNotEmpty) {
//       includeDefinition.setNamespaceName(identifiers.join('.'));
//     }
//     if (ctx.versionSpecifier() != null) {
//       includeDefinition.setVersion(visit(ctx.versionSpecifier()) as String);
//     }
//     if (ctx.localIdentifier() != null) {
//       includeDefinition.setLocalName(parseString(ctx.localIdentifier()));
//     } else {
//       includeDefinition.setLocalName(includeDefinition.getName());
//     }
//     includeDefinition.setDefinition(ctx);
//     processHeader(ctx, includeDefinition);
//     libraryInfo.addIncludeDefinition(includeDefinition);
//     return includeDefinition;
//   }

//   @override
//   Object visitUsingDefinition(UsingDefinitionContext ctx) {
//     var usingDefinition = UsingDefinitionInfo();
//     var identifiers = visit(ctx.qualifiedIdentifier()) as List<String>;
//     final unqualifiedIdentifier = identifiers.removeLast();
//     usingDefinition.setName(unqualifiedIdentifier);
//     if (identifiers.isNotEmpty) {
//       usingDefinition.setNamespaceName(identifiers.join('.'));
//     }
//     if (ctx.versionSpecifier() != null) {
//       usingDefinition.setVersion(visit(ctx.versionSpecifier()) as String);
//     }
//     if (ctx.localIdentifier() != null) {
//       usingDefinition.setLocalName(parseString(ctx.localIdentifier()));
//     } else {
//       usingDefinition.setLocalName(usingDefinition.getName());
//     }
//     usingDefinition.setDefinition(ctx);
//     processHeader(ctx, usingDefinition);
//     libraryInfo.addUsingDefinition(usingDefinition);

//     final namespaceName = identifiers.isNotEmpty
//         ? identifiers.join('.')
//         : libraryBuilder.isWellKnownModelName(unqualifiedIdentifier)
//             ? null
//             : (libraryBuilder.getNamespaceInfo() != null
//                 ? libraryBuilder.getNamespaceInfo().getName()
//                 : null);

//     NamespaceInfo modelNamespace;
//     if (namespaceName != null) {
//       var namespaceUri =
//           libraryBuilder.resolveNamespaceUri(namespaceName, true);
//       modelNamespace = NamespaceInfo(namespaceName, namespaceUri);
//     }

//     var localIdentifier = ctx.localIdentifier() == null
//         ? unqualifiedIdentifier
//         : parseString(ctx.localIdentifier());
//     if (localIdentifier != unqualifiedIdentifier) {
//       throw ArgumentError(
//           'Local identifiers for models must be the same as the name of the model in this release of the translator '
//           'Model $unqualifiedIdentifier, Called $localIdentifier');
//     }

//     // This should only be called once, from this class, and not from Cql2ElmVisitor otherwise there will be duplicate errors sometimes
//     var model = getModel(modelNamespace, unqualifiedIdentifier,
//         parseString(ctx.versionSpecifier()), localIdentifier);

//     return usingDefinition;
//   }

//   @override
//   Object visitCodesystemDefinition(CodesystemDefinitionContext ctx) {
//     var codesystemDefinition = CodesystemDefinitionInfo();
//     codesystemDefinition.setName(parseString(ctx.identifier()));
//     codesystemDefinition.setDefinition(ctx);
//     processHeader(ctx, codesystemDefinition);
//     libraryInfo.addCodesystemDefinition(codesystemDefinition);
//     return codesystemDefinition;
//   }

//   @override
//   Object visitValuesetDefinition(ValuesetDefinitionContext ctx) {
//     var valuesetDefinition = ValuesetDefinitionInfo();
//     valuesetDefinition.setName(parseString(ctx.identifier()));
//     valuesetDefinition.setDefinition(ctx);
//     processHeader(ctx, valuesetDefinition);
//     libraryInfo.addValuesetDefinition(valuesetDefinition);
//     return valuesetDefinition;
//   }

//   @override
//   Object visitCodeDefinition(CodeDefinitionContext ctx) {
//     var codeDefinition = CodeDefinitionInfo();
//     codeDefinition.setName(parseString(ctx.identifier()));
//     codeDefinition.setDefinition(ctx);
//     processHeader(ctx, codeDefinition);
//     libraryInfo.addCodeDefinition(codeDefinition);
//     return codeDefinition;
//   }

//   @override
//   Object visitConceptDefinition(ConceptDefinitionContext ctx) {
//     var conceptDefinition = ConceptDefinitionInfo();
//     conceptDefinition.setName(parseString(ctx.identifier()));
//     conceptDefinition.setDefinition(ctx);
//     processHeader(ctx, conceptDefinition);
//     libraryInfo.addConceptDefinition(conceptDefinition);
//     return conceptDefinition;
//   }

//   @override
//   Object visitParameterDefinition(ParameterDefinitionContext ctx) {
//     var parameterDefinition = ParameterDefinitionInfo();
//     parameterDefinition.setName(parseString(ctx.identifier()));
//     parameterDefinition.setDefinition(ctx);
//     processHeader(ctx, parameterDefinition);
//     libraryInfo.addParameterDefinition(parameterDefinition);
//     return parameterDefinition;
//   }

//   @override
//   Object visitContextDefinition(ContextDefinitionContext ctx) {
//     var modelIdentifier = ctx.modelIdentifier() != null
//         ? parseString(ctx.modelIdentifier())
//         : null;
//     var unqualifiedContext = parseString(ctx.identifier());
//     if (modelIdentifier != null && modelIdentifier.isNotEmpty) {
//       setCurrentContext('$modelIdentifier.$unqualifiedContext');
//     } else {
//       setCurrentContext(unqualifiedContext);
//     }

//     var contextDefinition = ContextDefinitionInfo();
//     contextDefinition.setDefinition(ctx);
//     processHeader(ctx, contextDefinition);
//     libraryInfo.addContextDefinition(contextDefinition);

//     if (!getImplicitContextCreated() && unqualifiedContext != 'Unfiltered') {
//       var expressionDefinition = ExpressionDefinitionInfo();
//       expressionDefinition.setName(unqualifiedContext);
//       expressionDefinition.setContext(getCurrentContext());
//       libraryInfo.addExpressionDefinition(expressionDefinition);
//       setImplicitContextCreated(true);
//     }
//     return getCurrentContext();
//   }

//   @override
//   Object visitExpressionDefinition(ExpressionDefinitionContext ctx) {
//     var expressionDefinition = ExpressionDefinitionInfo();
//     expressionDefinition.setName(parseString(ctx.identifier()));
//     expressionDefinition.setContext(getCurrentContext());
//     expressionDefinition.setDefinition(ctx);
//     processHeader(ctx, expressionDefinition);
//     libraryInfo.addExpressionDefinition(expressionDefinition);
//     return expressionDefinition;
//   }

//   @override
//   Object visitFunctionDefinition(FunctionDefinitionContext ctx) {
//     var functionDefinition = FunctionDefinitionInfo();
//     functionDefinition
//         .setName(parseString(ctx.identifierOrFunctionIdentifier()));
//     functionDefinition.setContext(getCurrentContext());
//     functionDefinition.setDefinition(ctx);
//     processHeader(ctx, functionDefinition);
//     libraryInfo.addFunctionDefinition(functionDefinition);
//     return functionDefinition;
//   }

//   @override
//   NamedTypeSpecifier visitNamedTypeSpecifier(NamedTypeSpecifierContext ctx) {
//     var qualifiers = parseQualifiers(ctx);
//     var modelIdentifier = getModelIdentifier(qualifiers);
//     var identifier = getTypeIdentifier(
//         qualifiers, parseString(ctx.referentialOrTypeNameIdentifier()));
//     final typeSpecifierKey = '$modelIdentifier:$identifier';

//     var resultType =
//         libraryBuilder.resolveTypeName(modelIdentifier, identifier);
//     if (resultType == null) {
//       libraryBuilder.addNamedTypeSpecifierResult(
//           typeSpecifierKey, ResultWithPossibleError.withError());
//       throw CqlCompilerException(
//           'Could not find type for model: $modelIdentifier and name: $identifier');
//     }
//     var result = of.createNamedTypeSpecifier()
//       ..withName(libraryBuilder.dataTypeToQName(resultType))
//       ..resultType = resultType;

//     libraryBuilder.addNamedTypeSpecifierResult(
//         typeSpecifierKey, ResultWithPossibleError.withTypeSpecifier(result));

//     return result;
//   }

//   @override
//   Object visitTerminal(TerminalNode node) {
//     var text = node.getText();
//     var tokenType = node.getSymbol().getType();
//     if (cqlLexer.STRING == tokenType ||
//         cqlLexer.QUOTEDIDENTIFIER == tokenType) {
//       // chop off leading and trailing ' or "
//       text = text.substring(1, text.length - 1);
//     }
//     return text;
//   }

//   @override
//   Object visitQualifiedIdentifier(QualifiedIdentifierContext ctx) {
//     // Return the list of qualified identifiers for resolution by the containing element
//     var identifiers = <String>[];
//     for (var qualifierContext in ctx.qualifier()) {
//       var qualifier = visit(qualifierContext) as String;
//       identifiers.add(qualifier);
//     }
//     var identifier = parseString(ctx.identifier());
//     identifiers.add(identifier);
//     return identifiers;
//   }

//   @override
//   Object visitQualifiedIdentifierExpression(
//       QualifiedIdentifierExpressionContext ctx) {
//     // Return the list of qualified identifiers for resolution by the containing element
//     var identifiers = <String>[];
//     for (var qualifierContext in ctx.qualifierExpression()) {
//       var qualifier = visit(qualifierContext) as String;
//       identifiers.add(qualifier);
//     }
//     var identifier = parseString(ctx.referentialIdentifier());
//     identifiers.add(identifier);
//     return identifiers;
//   }
// }
