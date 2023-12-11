// Generated from cql.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'package:fhir/dstu2.dart';

import '../../cql.dart';

/// This class provides an empty implementation of [cqlVisitor],
/// which can be extended to create a visitor which only needs to handle
/// a subset of the available methods.
///
/// [T] is the print(ctx.runtimeType); return type of the visit operation. Use `void` for
/// operations with no print(ctx.runtimeType); return type.
class cqlBaseVisitor<T> extends ParseTreeVisitor<T> implements cqlVisitor<T> {
  Library library = Library();
  final shouldPrint = false;

  Map<String, dynamic> get result => {'library': library.toJson()};

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLibrary(LibraryContext ctx) => visitChildren(ctx);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDefinition(DefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}  ${ctx.childCount}');
    }
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLibraryDefinition(LibraryDefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}  ${ctx.childCount}');
    }

    String? id;
    String? version;

    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifiedIdentifierContext) {
        id = visitQualifiedIdentifier(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      }
    }
    library.identifier = VersionedIdentifier(id: id, version: version);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitUsingDefinition(UsingDefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text} ${ctx.childCount}');
    }

    String? localIdentifier;
    String? version;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ModelIdentifierContext) {
        localIdentifier = visitModelIdentifier(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      }
    }
    if (library.usings == null) {
      library.usings = UsingDefs();
    }
    library.usings!.def.add(UsingDef(
      localIdentifier: localIdentifier,
      version: version,
      uri: localIdentifier == 'QUICK'
          ? 'http://hl7.org/fhir'
          : localIdentifier == 'FHIR'
              ? 'http://hl7.org/fhir'
              : '',
    ));
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  void visitIncludeDefinition(IncludeDefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    String? localIdentifier;
    String? path;
    String? version;

    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifiedIdentifierContext) {
        localIdentifier = visitQualifiedIdentifier(child);
      } else if (child is LocalIdentifierContext) {
        path = visitLocalIdentifier(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      }
    }

    if (library.includes == null) {
      library.includes = IncludeDefs();
    }
    library.includes!.def.add(IncludeDef(
        localIdentifier: localIdentifier, path: path, version: version));
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitLocalIdentifier(LocalIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text} ${ctx.childCount}');
    }
    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAccessModifier(AccessModifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  void visitParameterDefinition(ParameterDefinitionContext ctx) {
    if (shouldPrint) {
      print(
          '${ctx.runtimeType.toString()}   ${ctx.text}      ${ctx.childCount}');
    }
    if (library.parameters == null) {
      library.parameters = ParameterDefs();
    }

    String name = '';
    TypeSpecifier? typeSpecifier;

    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }
    if (typeSpecifier != null) {
      library.parameters!.def
          .add(ParameterDef(name: name, parameterTypeSpecifier: typeSpecifier));
    }
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodesystemDefinition(CodesystemDefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}   ${ctx.childCount}');
    }

    String? name;
    String? id;
    String? version;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is CodesystemIdContext) {
        id = visitCodesystemId(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      }
    }
    if (library.codeSystems == null) {
      library.codeSystems = CodeSystemDefs();
    }
    library.codeSystems!.def
        .add(CodeSystemDef(name: name, id: id, version: version));
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  void visitValuesetDefinition(ValuesetDefinitionContext ctx) {
    library.valueSets ??= ValueSetDefs();

    String name = '';
    String id = '';
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }
    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is ValuesetIdContext) {
        id = visitValuesetId(child);
      }
    }

    library.valueSets!.def.add(ValueSetDef(id: id, name: name));
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodesystems(CodesystemsContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  CodeSystemRef visitCodesystemIdentifier(CodesystemIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }
    return CodeSystemRef(name: _noQuoteString(ctx.text));
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLibraryIdentifier(LibraryIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  void visitCodeDefinition(CodeDefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}  ${ctx.childCount}');
    }

    String? name;
    String? id;
    String? display;
    CodeSystemRef? codeSystem;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is CodeIdContext) {
        id = visitCodeId(child);
      } else if (child is CodesystemIdentifierContext) {
        codeSystem = visitCodesystemIdentifier(child);
      }
    }

    if (library.codes == null) {
      library.codes = CodeDefs();
    }

    library.codes!.def.add(CodeDef(
      name: name ?? '',
      id: id ?? '',
      codeSystem: codeSystem,
    ));
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConceptDefinition(ConceptDefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeIdentifier(CodeIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitCodesystemId(CodesystemIdContext ctx) => _noQuoteString(ctx.text);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitValuesetId(ValuesetIdContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }
    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitVersionSpecifier(VersionSpecifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }
    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitCodeId(CodeIdContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }
    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  TypeSpecifier? visitTypeSpecifier(TypeSpecifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}    ${ctx.childCount}');
    }
    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is NamedTypeSpecifierContext) {
        return visitNamedTypeSpecifier(child);
      } else if (child is ListTypeSpecifierContext) {
        return visitListTypeSpecifier(child);
      } else if (child is IntervalTypeSpecifierContext) {
        return visitIntervalTypeSpecifier(child);
      } else if (child is TupleTypeSpecifierContext) {
        return visitTupleTypeSpecifier(child);
      } else if (child is ChoiceTypeSpecifierContext) {
        return visitChoiceTypeSpecifier(child);
      }
    }
    return null;
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  NamedTypeSpecifier? visitNamedTypeSpecifier(NamedTypeSpecifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }
    return NamedTypeSpecifier(namespace: QName.fromLocalPart(ctx.text));
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitModelIdentifier(ModelIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text} ${ctx.childCount}');
    }
    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitListTypeSpecifier(ListTypeSpecifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  IntervalTypeSpecifier visitIntervalTypeSpecifier(
      IntervalTypeSpecifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }
    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        return IntervalTypeSpecifier(pointType: visitTypeSpecifier(child));
      }
    }
    throw ArgumentError('Invalid IntervalTypeSpecifier');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleTypeSpecifier(TupleTypeSpecifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleElementDefinition(TupleElementDefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitChoiceTypeSpecifier(ChoiceTypeSpecifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStatement(StatementContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExpressionDefinition(ExpressionDefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text} ${ctx.childCount}');
    }
    String? name;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      }
    }
    if (library.statements == null) {
      library.statements = ExpressionDefs();
    }
    library.statements!.def.add(ExpressionDef.public(
      name: name ?? '',
      context: library.contexts != null && library.contexts!.def.isNotEmpty
          ? library.contexts!.def.first.name
          : null,
      expression: Expression(),
    ));

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  void visitContextDefinition(ContextDefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text} ${ctx.childCount}');
    }
    final ident = visitIdentifier;
    String? name;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      }
    }
    if (library.contexts == null) {
      library.contexts = ContextDefs();
    }
    if (name != null) {
      library.contexts!.def.add(ContextDef(name: name));
      if (library.statements == null) {
        library.statements = ExpressionDefs();
      }
      library.statements!.def.add(
        ExpressionDef.context(
          name: name,
          context: name,
          expression: SingletonFrom(
            operand: Retrieve(
              dataType: QName.fromLocalPart(name),
            ),
          ),
        ),
      );
    }
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunctionDefinition(FunctionDefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOperandDefinition(OperandDefinitionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunctionBody(FunctionBodyContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuerySource(QuerySourceContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAliasedQuerySource(AliasedQuerySourceContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAlias(AliasContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQueryInclusionClause(QueryInclusionClauseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWithClause(WithClauseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWithoutClause(WithoutClauseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRetrieve(RetrieveContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitContextIdentifier(ContextIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodePath(CodePathContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeComparator(CodeComparatorContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTerminology(TerminologyContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifier(QualifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuery(QueryContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSourceClause(SourceClauseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLetClause(LetClauseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLetClauseItem(LetClauseItemContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWhereClause(WhereClauseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReturnClause(ReturnClauseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAggregateClause(AggregateClauseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStartingClause(StartingClauseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSortClause(SortClauseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSortDirection(SortDirectionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSortByItem(SortByItemContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitQualifiedIdentifier(QualifiedIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        return visitIdentifier(child);
      }
    }
    return '';
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedIdentifierExpression(
      QualifiedIdentifierExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifierExpression(QualifierExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimplePathIndexer(SimplePathIndexerContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimplePathQualifiedIdentifier(
      SimplePathQualifiedIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimplePathReferentialIdentifier(
      SimplePathReferentialIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimpleStringLiteral(SimpleStringLiteralContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimpleNumberLiteral(SimpleNumberLiteralContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDurationBetweenExpression(DurationBetweenExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInFixSetExpression(InFixSetExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRetrieveExpression(RetrieveExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimingExpression(TimingExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQueryExpression(QueryExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitNotExpression(NotExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBooleanExpression(BooleanExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOrExpression(OrExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCastExpression(CastExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAndExpression(AndExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBetweenExpression(BetweenExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMembershipExpression(MembershipExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDifferenceBetweenExpression(
      DifferenceBetweenExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInequalityExpression(InequalityExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitEqualityExpression(EqualityExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExistenceExpression(ExistenceExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitImpliesExpression(ImpliesExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTermExpression(TermExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTypeExpression(TypeExpressionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimePrecision(DateTimePrecisionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimeComponent(DateTimeComponentContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPluralDateTimePrecision(PluralDateTimePrecisionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAdditionExpressionTerm(AdditionExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIndexedExpressionTerm(IndexedExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWidthExpressionTerm(WidthExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSetAggregateExpressionTerm(
      SetAggregateExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimeUnitExpressionTerm(TimeUnitExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIfThenElseExpressionTerm(IfThenElseExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimeBoundaryExpressionTerm(
      TimeBoundaryExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitElementExtractorExpressionTerm(
      ElementExtractorExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConversionExpressionTerm(ConversionExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTypeExtentExpressionTerm(TypeExtentExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPredecessorExpressionTerm(PredecessorExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPointExtractorExpressionTerm(
      PointExtractorExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMultiplicationExpressionTerm(
      MultiplicationExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAggregateExpressionTerm(AggregateExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDurationExpressionTerm(DurationExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDifferenceExpressionTerm(DifferenceExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCaseExpressionTerm(CaseExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPowerExpressionTerm(PowerExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSuccessorExpressionTerm(SuccessorExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPolarityExpressionTerm(PolarityExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTermExpressionTerm(TermExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInvocationExpressionTerm(InvocationExpressionTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCaseExpressionItem(CaseExpressionItemContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimePrecisionSpecifier(
      DateTimePrecisionSpecifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRelativeQualifier(RelativeQualifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOffsetRelativeQualifier(OffsetRelativeQualifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExclusiveRelativeQualifier(
      ExclusiveRelativeQualifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuantityOffset(QuantityOffsetContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTemporalRelationship(TemporalRelationshipContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConcurrentWithIntervalOperatorPhrase(
      ConcurrentWithIntervalOperatorPhraseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIncludesIntervalOperatorPhrase(
      IncludesIntervalOperatorPhraseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIncludedInIntervalOperatorPhrase(
      IncludedInIntervalOperatorPhraseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBeforeOrAfterIntervalOperatorPhrase(
      BeforeOrAfterIntervalOperatorPhraseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWithinIntervalOperatorPhrase(
      WithinIntervalOperatorPhraseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMeetsIntervalOperatorPhrase(
      MeetsIntervalOperatorPhraseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOverlapsIntervalOperatorPhrase(
      OverlapsIntervalOperatorPhraseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStartsIntervalOperatorPhrase(
      StartsIntervalOperatorPhraseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitEndsIntervalOperatorPhrase(
      EndsIntervalOperatorPhraseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInvocationTerm(InvocationTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLiteralTerm(LiteralTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExternalConstantTerm(ExternalConstantTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIntervalSelectorTerm(IntervalSelectorTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleSelectorTerm(TupleSelectorTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInstanceSelectorTerm(InstanceSelectorTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitListSelectorTerm(ListSelectorTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeSelectorTerm(CodeSelectorTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConceptSelectorTerm(ConceptSelectorTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitParenthesizedTerm(ParenthesizedTermContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedMemberInvocation(QualifiedMemberInvocationContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedFunctionInvocation(
      QualifiedFunctionInvocationContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedFunction(QualifiedFunctionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMemberInvocation(MemberInvocationContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunctionInvocation(FunctionInvocationContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitThisInvocation(ThisInvocationContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIndexInvocation(IndexInvocationContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTotalInvocation(TotalInvocationContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunction(FunctionContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRatio(RatioContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBooleanLiteral(BooleanLiteralContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitNullLiteral(NullLiteralContext ctx) {
    // if (shouldPrint) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
    // }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStringLiteral(StringLiteralContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitNumberLiteral(NumberLiteralContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLongNumberLiteral(LongNumberLiteralContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimeLiteral(DateTimeLiteralContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateLiteral(DateLiteralContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimeLiteral(TimeLiteralContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuantityLiteral(QuantityLiteralContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRatioLiteral(RatioLiteralContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIntervalSelector(IntervalSelectorContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleSelector(TupleSelectorContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleElementSelector(TupleElementSelectorContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInstanceSelector(InstanceSelectorContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInstanceElementSelector(InstanceElementSelectorContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitListSelector(ListSelectorContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  void visitDisplayClause(DisplayClauseContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text} ${ctx.childCount}');
    }
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeSelector(CodeSelectorContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConceptSelector(ConceptSelectorContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitKeyword(KeywordContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReservedWord(ReservedWordContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitKeywordIdentifier(KeywordIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitObsoleteIdentifier(ObsoleteIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunctionIdentifier(FunctionIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTypeNameIdentifier(TypeNameIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReferentialIdentifier(ReferentialIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReferentialOrTypeNameIdentifier(
      ReferentialOrTypeNameIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIdentifierOrFunctionIdentifier(
      IdentifierOrFunctionIdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitIdentifier(IdentifierContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExternalConstant(ExternalConstantContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitParamList(ParamListContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuantity(QuantityContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitUnit(UnitContext ctx) {
    if (shouldPrint) {
      print('${ctx.runtimeType.toString()}   ${ctx.text}');
    }

    visitChildren(ctx);
  }

  String _noQuoteString(String string) {
    if (string.isNotEmpty) {
      if (string[0] == '"' || string[0] == "'") {
        string = string.substring(1, string.length - 1);
      }
      if (string.isNotEmpty &&
          (string[string.length - 1] == '"' ||
              string[string.length - 1] == "'")) {
        string = string.substring(0, string.length - 2);
      }
    }
    return string;
  }

  dynamic byContext(ParserRuleContext ctx) {
    if (ctx is LibraryContext) {
      return visitLibrary(ctx);
    } else if (ctx is DefinitionContext) {
      return visitDefinition(ctx);
    } else if (ctx is LibraryDefinitionContext) {
      return visitLibraryDefinition(ctx);
    } else if (ctx is UsingDefinitionContext) {
      return visitUsingDefinition(ctx);
    } else if (ctx is IncludeDefinitionContext) {
      return visitIncludeDefinition(ctx);
    } else if (ctx is LocalIdentifierContext) {
      return visitLocalIdentifier(ctx);
    } else if (ctx is AccessModifierContext) {
      return visitAccessModifier(ctx);
    } else if (ctx is ParameterDefinitionContext) {
      return visitParameterDefinition(ctx);
    } else if (ctx is CodesystemDefinitionContext) {
      return visitCodesystemDefinition(ctx);
    } else if (ctx is ValuesetDefinitionContext) {
      return visitValuesetDefinition(ctx);
    } else if (ctx is CodesystemsContext) {
      return visitCodesystems(ctx);
    } else if (ctx is CodesystemIdentifierContext) {
      return visitCodesystemIdentifier(ctx);
    } else if (ctx is LibraryIdentifierContext) {
      return visitLibraryIdentifier(ctx);
    } else if (ctx is CodeDefinitionContext) {
      return visitCodeDefinition(ctx);
    } else if (ctx is ConceptDefinitionContext) {
      return visitConceptDefinition(ctx);
    } else if (ctx is CodeIdentifierContext) {
      return visitCodeIdentifier(ctx);
    } else if (ctx is CodesystemIdContext) {
      return visitCodesystemId(ctx);
    } else if (ctx is ValuesetIdContext) {
      return visitValuesetId(ctx);
    } else if (ctx is VersionSpecifierContext) {
      return visitVersionSpecifier(ctx);
    } else if (ctx is CodeIdContext) {
      return visitCodeId(ctx);
    } else if (ctx is TypeSpecifierContext) {
      return visitTypeSpecifier(ctx);
    } else if (ctx is NamedTypeSpecifierContext) {
      return visitNamedTypeSpecifier(ctx);
    } else if (ctx is ModelIdentifierContext) {
      return visitModelIdentifier(ctx);
    } else if (ctx is ListTypeSpecifierContext) {
      return visitListTypeSpecifier(ctx);
    } else if (ctx is IntervalTypeSpecifierContext) {
      return visitIntervalTypeSpecifier(ctx);
    } else if (ctx is TupleTypeSpecifierContext) {
      return visitTupleTypeSpecifier(ctx);
    } else if (ctx is TupleElementDefinitionContext) {
      return visitTupleElementDefinition(ctx);
    } else if (ctx is ChoiceTypeSpecifierContext) {
      return visitChoiceTypeSpecifier(ctx);
    } else if (ctx is StatementContext) {
      return visitStatement(ctx);
    } else if (ctx is ExpressionDefinitionContext) {
      return visitExpressionDefinition(ctx);
    } else if (ctx is ContextDefinitionContext) {
      return visitContextDefinition(ctx);
    } else if (ctx is FunctionDefinitionContext) {
      return visitFunctionDefinition(ctx);
    } else if (ctx is OperandDefinitionContext) {
      return visitOperandDefinition(ctx);
    } else if (ctx is FunctionBodyContext) {
      return visitFunctionBody(ctx);
    } else if (ctx is QuerySourceContext) {
      return visitQuerySource(ctx);
    } else if (ctx is AliasedQuerySourceContext) {
      return visitAliasedQuerySource(ctx);
    } else if (ctx is AliasContext) {
      return visitAlias(ctx);
    } else if (ctx is QueryInclusionClauseContext) {
      return visitQueryInclusionClause(ctx);
    } else if (ctx is WithClauseContext) {
      return visitWithClause(ctx);
    } else if (ctx is WithoutClauseContext) {
      return visitWithoutClause(ctx);
    } else if (ctx is RetrieveContext) {
      return visitRetrieve(ctx);
    } else if (ctx is ContextIdentifierContext) {
      return visitContextIdentifier(ctx);
    } else if (ctx is CodePathContext) {
      return visitCodePath(ctx);
    } else if (ctx is CodeComparatorContext) {
      return visitCodeComparator(ctx);
    } else if (ctx is TerminologyContext) {
      return visitTerminology(ctx);
    } else if (ctx is QualifierContext) {
      return visitQualifier(ctx);
    } else if (ctx is QueryContext) {
      return visitQuery(ctx);
    } else if (ctx is SourceClauseContext) {
      return visitSourceClause(ctx);
    } else if (ctx is LetClauseContext) {
      return visitLetClause(ctx);
    } else if (ctx is LetClauseItemContext) {
      return visitLetClauseItem(ctx);
    } else if (ctx is WhereClauseContext) {
      return visitWhereClause(ctx);
    } else if (ctx is ReturnClauseContext) {
      return visitReturnClause(ctx);
    } else if (ctx is AggregateClauseContext) {
      return visitAggregateClause(ctx);
    } else if (ctx is StartingClauseContext) {
      return visitStartingClause(ctx);
    } else if (ctx is SortClauseContext) {
      return visitSortClause(ctx);
    } else if (ctx is SortDirectionContext) {
      return visitSortDirection(ctx);
    } else if (ctx is SortByItemContext) {
      return visitSortByItem(ctx);
    } else if (ctx is QualifiedIdentifierContext) {
      return visitQualifiedIdentifier(ctx);
    } else if (ctx is QualifiedIdentifierExpressionContext) {
      return visitQualifiedIdentifierExpression(ctx);
    } else if (ctx is QualifierExpressionContext) {
      return visitQualifierExpression(ctx);
    } else if (ctx is SimplePathIndexerContext) {
      return visitSimplePathIndexer(ctx);
    } else if (ctx is SimplePathQualifiedIdentifierContext) {
      return visitSimplePathQualifiedIdentifier(ctx);
    } else if (ctx is SimplePathReferentialIdentifierContext) {
      return visitSimplePathReferentialIdentifier(ctx);
    } else if (ctx is SimpleStringLiteralContext) {
      return visitSimpleStringLiteral(ctx);
    } else if (ctx is SimpleNumberLiteralContext) {
      return visitSimpleNumberLiteral(ctx);
    } else if (ctx is DurationBetweenExpressionContext) {
      return visitDurationBetweenExpression(ctx);
    } else if (ctx is InFixSetExpressionContext) {
      return visitInFixSetExpression(ctx);
    } else if (ctx is RetrieveExpressionContext) {
      return visitRetrieveExpression(ctx);
    } else if (ctx is TimingExpressionContext) {
      return visitTimingExpression(ctx);
    } else if (ctx is QueryExpressionContext) {
      return visitQueryExpression(ctx);
    } else if (ctx is NotExpressionContext) {
      return visitNotExpression(ctx);
    } else if (ctx is BooleanExpressionContext) {
      return visitBooleanExpression(ctx);
    } else if (ctx is OrExpressionContext) {
      return visitOrExpression(ctx);
    } else if (ctx is CastExpressionContext) {
      return visitCastExpression(ctx);
    } else if (ctx is AndExpressionContext) {
      return visitAndExpression(ctx);
    } else if (ctx is BetweenExpressionContext) {
      return visitBetweenExpression(ctx);
    } else if (ctx is MembershipExpressionContext) {
      return visitMembershipExpression(ctx);
    } else if (ctx is DifferenceBetweenExpressionContext) {
      return visitDifferenceBetweenExpression(ctx);
    } else if (ctx is InequalityExpressionContext) {
      return visitInequalityExpression(ctx);
    } else if (ctx is EqualityExpressionContext) {
      return visitEqualityExpression(ctx);
    } else if (ctx is ExistenceExpressionContext) {
      return visitExistenceExpression(ctx);
    } else if (ctx is ImpliesExpressionContext) {
      return visitImpliesExpression(ctx);
    } else if (ctx is TermExpressionContext) {
      return visitTermExpression(ctx);
    } else if (ctx is TypeExpressionContext) {
      return visitTypeExpression(ctx);
    } else if (ctx is DateTimePrecisionContext) {
      return visitDateTimePrecision(ctx);
    } else if (ctx is DateTimeComponentContext) {
      return visitDateTimeComponent(ctx);
    } else if (ctx is PluralDateTimePrecisionContext) {
      return visitPluralDateTimePrecision(ctx);
    } else if (ctx is AdditionExpressionTermContext) {
      return visitAdditionExpressionTerm(ctx);
    } else if (ctx is IndexedExpressionTermContext) {
      return visitIndexedExpressionTerm(ctx);
    } else if (ctx is WidthExpressionTermContext) {
      return visitWidthExpressionTerm(ctx);
    } else if (ctx is SetAggregateExpressionTermContext) {
      return visitSetAggregateExpressionTerm(ctx);
    } else if (ctx is TimeUnitExpressionTermContext) {
      return visitTimeUnitExpressionTerm(ctx);
    } else if (ctx is IfThenElseExpressionTermContext) {
      return visitIfThenElseExpressionTerm(ctx);
    } else if (ctx is TimeBoundaryExpressionTermContext) {
      return visitTimeBoundaryExpressionTerm(ctx);
    } else if (ctx is ElementExtractorExpressionTermContext) {
      return visitElementExtractorExpressionTerm(ctx);
    } else if (ctx is ConversionExpressionTermContext) {
      return visitConversionExpressionTerm(ctx);
    } else if (ctx is TypeExtentExpressionTermContext) {
      return visitTypeExtentExpressionTerm(ctx);
    } else if (ctx is PredecessorExpressionTermContext) {
      return visitPredecessorExpressionTerm(ctx);
    } else if (ctx is PointExtractorExpressionTermContext) {
      return visitPointExtractorExpressionTerm(ctx);
    } else if (ctx is MultiplicationExpressionTermContext) {
      return visitMultiplicationExpressionTerm(ctx);
    } else if (ctx is AggregateExpressionTermContext) {
      return visitAggregateExpressionTerm(ctx);
    } else if (ctx is DurationExpressionTermContext) {
      return visitDurationExpressionTerm(ctx);
    } else if (ctx is DifferenceExpressionTermContext) {
      return visitDifferenceExpressionTerm(ctx);
    } else if (ctx is CaseExpressionTermContext) {
      return visitCaseExpressionTerm(ctx);
    } else if (ctx is PowerExpressionTermContext) {
      return visitPowerExpressionTerm(ctx);
    } else if (ctx is SuccessorExpressionTermContext) {
      return visitSuccessorExpressionTerm(ctx);
    } else if (ctx is PolarityExpressionTermContext) {
      return visitPolarityExpressionTerm(ctx);
    } else if (ctx is TermExpressionTermContext) {
      return visitTermExpressionTerm(ctx);
    } else if (ctx is InvocationExpressionTermContext) {
      return visitInvocationExpressionTerm(ctx);
    } else if (ctx is CaseExpressionItemContext) {
      return visitCaseExpressionItem(ctx);
    } else if (ctx is DateTimePrecisionSpecifierContext) {
      return visitDateTimePrecisionSpecifier(ctx);
    } else if (ctx is RelativeQualifierContext) {
      return visitRelativeQualifier(ctx);
    } else if (ctx is OffsetRelativeQualifierContext) {
      return visitOffsetRelativeQualifier(ctx);
    } else if (ctx is ExclusiveRelativeQualifierContext) {
      return visitExclusiveRelativeQualifier(ctx);
    } else if (ctx is QuantityOffsetContext) {
      return visitQuantityOffset(ctx);
    } else if (ctx is TemporalRelationshipContext) {
      return visitTemporalRelationship(ctx);
    } else if (ctx is ConcurrentWithIntervalOperatorPhraseContext) {
      return visitConcurrentWithIntervalOperatorPhrase(ctx);
    } else if (ctx is IncludesIntervalOperatorPhraseContext) {
      return visitIncludesIntervalOperatorPhrase(ctx);
    } else if (ctx is IncludedInIntervalOperatorPhraseContext) {
      return visitIncludedInIntervalOperatorPhrase(ctx);
    } else if (ctx is BeforeOrAfterIntervalOperatorPhraseContext) {
      return visitBeforeOrAfterIntervalOperatorPhrase(ctx);
    } else if (ctx is WithinIntervalOperatorPhraseContext) {
      return visitWithinIntervalOperatorPhrase(ctx);
    } else if (ctx is MeetsIntervalOperatorPhraseContext) {
      return visitMeetsIntervalOperatorPhrase(ctx);
    } else if (ctx is OverlapsIntervalOperatorPhraseContext) {
      return visitOverlapsIntervalOperatorPhrase(ctx);
    } else if (ctx is StartsIntervalOperatorPhraseContext) {
      return visitStartsIntervalOperatorPhrase(ctx);
    } else if (ctx is EndsIntervalOperatorPhraseContext) {
      return visitEndsIntervalOperatorPhrase(ctx);
    } else if (ctx is InvocationTermContext) {
      return visitInvocationTerm(ctx);
    } else if (ctx is LiteralTermContext) {
      return visitLiteralTerm(ctx);
    } else if (ctx is ExternalConstantTermContext) {
      return visitExternalConstantTerm(ctx);
    } else if (ctx is IntervalSelectorTermContext) {
      return visitIntervalSelectorTerm(ctx);
    } else if (ctx is TupleSelectorTermContext) {
      return visitTupleSelectorTerm(ctx);
    } else if (ctx is InstanceSelectorTermContext) {
      return visitInstanceSelectorTerm(ctx);
    } else if (ctx is ListSelectorTermContext) {
      return visitListSelectorTerm(ctx);
    } else if (ctx is CodeSelectorTermContext) {
      return visitCodeSelectorTerm(ctx);
    } else if (ctx is ConceptSelectorTermContext) {
      return visitConceptSelectorTerm(ctx);
    } else if (ctx is ParenthesizedTermContext) {
      return visitParenthesizedTerm(ctx);
    } else if (ctx is QualifiedMemberInvocationContext) {
      return visitQualifiedMemberInvocation(ctx);
    } else if (ctx is QualifiedFunctionInvocationContext) {
      return visitQualifiedFunctionInvocation(ctx);
    } else if (ctx is QualifiedFunctionContext) {
      return visitQualifiedFunction(ctx);
    } else if (ctx is MemberInvocationContext) {
      return visitMemberInvocation(ctx);
    } else if (ctx is FunctionInvocationContext) {
      return visitFunctionInvocation(ctx);
    } else if (ctx is ThisInvocationContext) {
      return visitThisInvocation(ctx);
    } else if (ctx is IndexInvocationContext) {
      return visitIndexInvocation(ctx);
    } else if (ctx is TotalInvocationContext) {
      return visitTotalInvocation(ctx);
    } else if (ctx is FunctionContext) {
      return visitFunction(ctx);
    } else if (ctx is RatioContext) {
      return visitRatio(ctx);
    } else if (ctx is BooleanLiteralContext) {
      return visitBooleanLiteral(ctx);
    } else if (ctx is NullLiteralContext) {
      return visitNullLiteral(ctx);
    } else if (ctx is StringLiteralContext) {
      return visitStringLiteral(ctx);
    } else if (ctx is NumberLiteralContext) {
      return visitNumberLiteral(ctx);
    } else if (ctx is LongNumberLiteralContext) {
      return visitLongNumberLiteral(ctx);
    } else if (ctx is DateTimeLiteralContext) {
      return visitDateTimeLiteral(ctx);
    } else if (ctx is DateLiteralContext) {
      return visitDateLiteral(ctx);
    } else if (ctx is TimeLiteralContext) {
      return visitTimeLiteral(ctx);
    } else if (ctx is QuantityLiteralContext) {
      return visitQuantityLiteral(ctx);
    } else if (ctx is RatioLiteralContext) {
      return visitRatioLiteral(ctx);
    } else if (ctx is IntervalSelectorContext) {
      return visitIntervalSelector(ctx);
    } else if (ctx is TupleSelectorContext) {
      return visitTupleSelector(ctx);
    } else if (ctx is TupleElementSelectorContext) {
      return visitTupleElementSelector(ctx);
    } else if (ctx is InstanceSelectorContext) {
      return visitInstanceSelector(ctx);
    } else if (ctx is InstanceElementSelectorContext) {
      return visitInstanceElementSelector(ctx);
    } else if (ctx is ListSelectorContext) {
      return visitListSelector(ctx);
    } else if (ctx is DisplayClauseContext) {
      return visitDisplayClause(ctx);
    } else if (ctx is CodeSelectorContext) {
      return visitCodeSelector(ctx);
    } else if (ctx is ConceptSelectorContext) {
      return visitConceptSelector(ctx);
    } else if (ctx is KeywordContext) {
      return visitKeyword(ctx);
    } else if (ctx is ReservedWordContext) {
      return visitReservedWord(ctx);
    } else if (ctx is KeywordIdentifierContext) {
      return visitKeywordIdentifier(ctx);
    } else if (ctx is ObsoleteIdentifierContext) {
      return visitObsoleteIdentifier(ctx);
    } else if (ctx is FunctionIdentifierContext) {
      return visitFunctionIdentifier(ctx);
    } else if (ctx is TypeNameIdentifierContext) {
      return visitTypeNameIdentifier(ctx);
    } else if (ctx is ReferentialIdentifierContext) {
      return visitReferentialIdentifier(ctx);
    } else if (ctx is ReferentialOrTypeNameIdentifierContext) {
      return visitReferentialOrTypeNameIdentifier(ctx);
    } else if (ctx is IdentifierOrFunctionIdentifierContext) {
      return visitIdentifierOrFunctionIdentifier(ctx);
    } else if (ctx is IdentifierContext) {
      return visitIdentifier(ctx);
    } else if (ctx is ExternalConstantContext) {
      return visitExternalConstant(ctx);
    } else if (ctx is ParamListContext) {
      return visitParamList(ctx);
    } else if (ctx is QuantityContext) {
      return visitQuantity(ctx);
    } else if (ctx is UnitContext) {
      return visitUnit(ctx);
    }
  }
}
