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
  int nodeNumber = 0;
  int getNextNode() {
    final tempNumber = nodeNumber.toInt();
    nodeNumber++;
    return tempNumber;
  }

  Library library = Library();
  final shouldPrint = false;
  void printIf(ParserRuleContext ctx, [bool should = false]) {
    if (shouldPrint || should) {
      print('$nodeNumber    '
          '${ctx.runtimeType}    '
          '${ctx.text}    '
          '${ctx.childCount}    '
          '${ctx.parent.runtimeType}');
    }
  }

  Map<String, dynamic> get result => {'library': library.toJson()};

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLibrary(LibraryContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDefinition(DefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLibraryDefinition(LibraryDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

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
    printIf(ctx);
    final int thisNode = getNextNode();

    String? localIdentifier;
    String? version;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ModelIdentifierContext) {
        localIdentifier = visitModelIdentifier(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      }
    }
    library.usings ??= UsingDefs();
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
    printIf(ctx);
    final int thisNode = getNextNode();

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

    library.includes ??= IncludeDefs();
    library.includes!.def.add(IncludeDef(
        localIdentifier: localIdentifier, path: path, version: version));
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitLocalIdentifier(LocalIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAccessModifier(AccessModifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  void visitParameterDefinition(ParameterDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    library.parameters ??= ParameterDefs();

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
    printIf(ctx);
    final int thisNode = getNextNode();

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
    library.codeSystems ??= CodeSystemDefs();
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
    printIf(ctx);
    final int thisNode = getNextNode();
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
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  CodeSystemRef visitCodesystemIdentifier(CodesystemIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return CodeSystemRef(name: _noQuoteString(ctx.text));
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLibraryIdentifier(LibraryIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  void visitCodeDefinition(CodeDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

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
      } else if (child is DisplayClauseContext) {
        display = visitDisplayClause(child);
      }
    }

    library.codes ??= CodeDefs();

    library.codes!.def.add(CodeDef(
      name: name ?? '',
      id: id ?? '',
      display: display,
      codeSystem: codeSystem,
    ));
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConceptDefinition(ConceptDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeIdentifier(CodeIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

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
    printIf(ctx);
    final int thisNode = getNextNode();
    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitVersionSpecifier(VersionSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitCodeId(CodeIdContext ctx) {
    printIf(ctx, true);
    final int thisNode = getNextNode();
    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  TypeSpecifier? visitTypeSpecifier(TypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
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
    printIf(ctx);
    return NamedTypeSpecifier(namespace: QName.fromLocalPart(ctx.text));
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitModelIdentifier(ModelIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitListTypeSpecifier(ListTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  IntervalTypeSpecifier visitIntervalTypeSpecifier(
      IntervalTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
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
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleElementDefinition(TupleElementDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitChoiceTypeSpecifier(ChoiceTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStatement(StatementContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    library.statements ??= ExpressionDefs();
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExpressionDefinition(ExpressionDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else {
        // print(child.runtimeType);
        final result = byContext(child);
        if (result != null) {
          library.statements!.def.add(ExpressionDef.public(
            name: name ?? '',
            context:
                library.contexts != null && library.contexts!.def.isNotEmpty
                    ? library.contexts!.def.first.name
                    : null,
            expression: result,
          ));
        }
      }
    }
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  void visitContextDefinition(ContextDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final ident = visitIdentifier;
    String? name;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      }
    }
    library.contexts ??= ContextDefs();
    if (name != null) {
      library.contexts!.def.add(ContextDef(name: name));
      library.statements ??= ExpressionDefs();
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
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOperandDefinition(OperandDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunctionBody(FunctionBodyContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Expression visitQuerySource(QuerySourceContext ctx) {
    printIf(ctx, true);
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is RetrieveContext) {
        return visitRetrieve(child);
      } else if (child is QualifiedIdentifierExpressionContext) {
        return visitQualifiedIdentifierExpression(child);
      }
    }
    throw ArgumentError('Invalid QuerySource');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAliasedQuerySource(AliasedQuerySourceContext ctx) {
    printIf(ctx, true);
    final int thisNode = getNextNode();
    String? alias;
    Expression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AliasContext) {
        alias = visitAlias(child);
      } else if (child is QuerySourceContext) {
        final temp = visitQuerySource(child);
        print(temp);
        expression = temp;
        // visitQuerySource(child);
      }
    }
    if (alias != null && expression != null) {
      return RelationshipClause(alias: alias, expression: expression);
    } else {
      throw ArgumentError('$thisNode: Invalid AliasedQuerySource');
    }
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAlias(AliasContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQueryInclusionClause(QueryInclusionClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWithClause(WithClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWithoutClause(WithoutClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Retrieve visitRetrieve(RetrieveContext ctx) {
    printIf(ctx);
    NamedTypeSpecifier? name;
    ValueSetRef? codes;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is NamedTypeSpecifierContext) {
        name = visitNamedTypeSpecifier(child);
      } else if (child is TerminologyContext) {
        final temp = visitTerminology(child);
        print(temp.runtimeType);
        codes = temp;
        // visitTerminology(child);
      }
    }
    if (name != null) {
      return Retrieve(
        dataType: name.namespace,
        codes: codes,
      );
    } else {
      throw ArgumentError('Invalid Retrieve');
    }
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitContextIdentifier(ContextIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodePath(CodePathContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeComparator(CodeComparatorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTerminology(TerminologyContext ctx) {
    printIf(ctx, true);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result != null && result is String) {
        return ValueSetRef(name: result);
      }
    }
    throw ArgumentError('$thisNode Invalid Terminology');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifier(QualifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Query visitQuery(QueryContext ctx) {
    printIf(ctx);
    List<AliasedQuerySource> source = [];
    List<LetClause>? let;
    List<RelationshipClause>? relationship;
    Expression? where;
    ReturnClause? returnClause;
    SortClause? sort;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is SourceClauseContext) {
        final result = visitSourceClause(child);
        if (result is AliasedQuerySource) {
          source.add(result);
        } else if (result is List<AliasedQuerySource>) {
          source.addAll(result);
        }
      } else if (child is WhereClauseContext) {
        where = visitWhereClause(child);
      } else if (child is ReturnClauseContext) {
        returnClause = visitReturnClause(child);
      } else if (child is SortClauseContext) {
        sort = visitSortClause(child);
      } else {
        byContext(child);
      }
    }

    return Query(source: source);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSourceClause(SourceClauseContext ctx) {
    printIf(ctx);
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AliasedQuerySourceContext) {
        return visitAliasedQuerySource(child);
      }
    }
    throw ArgumentError('Invalid SourceClause');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLetClause(LetClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLetClauseItem(LetClauseItemContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWhereClause(WhereClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReturnClause(ReturnClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAggregateClause(AggregateClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStartingClause(StartingClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSortClause(SortClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSortDirection(SortDirectionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSortByItem(SortByItemContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitQualifiedIdentifier(QualifiedIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
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
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      print(child.text);
      print(child.runtimeType);
      final result = byContext(child);
      print(result);
      if (result != null) {
        return result;
      }
    }
    throw ArgumentError('$thisNode Invalid QualifiedIdentifierExpression');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifierExpression(QualifierExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimplePathIndexer(SimplePathIndexerContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimplePathQualifiedIdentifier(
      SimplePathQualifiedIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimplePathReferentialIdentifier(
      SimplePathReferentialIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimpleStringLiteral(SimpleStringLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimpleNumberLiteral(SimpleNumberLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDurationBetweenExpression(DurationBetweenExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInFixSetExpression(InFixSetExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRetrieveExpression(RetrieveExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimingExpression(TimingExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Query visitQueryExpression(QueryExpressionContext ctx) {
    printIf(ctx);
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QueryContext) {
        return visitQuery(child);
      }
    }
    throw ArgumentError('Invalid QueryExpression');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitNotExpression(NotExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBooleanExpression(BooleanExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    for (final child in ctx.children ?? <ParseTree>[]) {
      // print(child.runtimeType);
    }

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOrExpression(OrExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCastExpression(CastExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAndExpression(AndExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBetweenExpression(BetweenExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMembershipExpression(MembershipExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDifferenceBetweenExpression(
      DifferenceBetweenExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInequalityExpression(InequalityExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitEqualityExpression(EqualityExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExistenceExpression(ExistenceExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitImpliesExpression(ImpliesExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTermExpression(TermExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTypeExpression(TypeExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimePrecision(DateTimePrecisionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimeComponent(DateTimeComponentContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPluralDateTimePrecision(PluralDateTimePrecisionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAdditionExpressionTerm(AdditionExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIndexedExpressionTerm(IndexedExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWidthExpressionTerm(WidthExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSetAggregateExpressionTerm(
      SetAggregateExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimeUnitExpressionTerm(TimeUnitExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIfThenElseExpressionTerm(IfThenElseExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimeBoundaryExpressionTerm(
      TimeBoundaryExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitElementExtractorExpressionTerm(
      ElementExtractorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConversionExpressionTerm(ConversionExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTypeExtentExpressionTerm(TypeExtentExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPredecessorExpressionTerm(PredecessorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPointExtractorExpressionTerm(
      PointExtractorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMultiplicationExpressionTerm(
      MultiplicationExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAggregateExpressionTerm(AggregateExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDurationExpressionTerm(DurationExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDifferenceExpressionTerm(DifferenceExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCaseExpressionTerm(CaseExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPowerExpressionTerm(PowerExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSuccessorExpressionTerm(SuccessorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPolarityExpressionTerm(PolarityExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTermExpressionTerm(TermExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInvocationExpressionTerm(InvocationExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCaseExpressionItem(CaseExpressionItemContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimePrecisionSpecifier(
      DateTimePrecisionSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRelativeQualifier(RelativeQualifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOffsetRelativeQualifier(OffsetRelativeQualifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExclusiveRelativeQualifier(
      ExclusiveRelativeQualifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuantityOffset(QuantityOffsetContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTemporalRelationship(TemporalRelationshipContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConcurrentWithIntervalOperatorPhrase(
      ConcurrentWithIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIncludesIntervalOperatorPhrase(
      IncludesIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIncludedInIntervalOperatorPhrase(
      IncludedInIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBeforeOrAfterIntervalOperatorPhrase(
      BeforeOrAfterIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWithinIntervalOperatorPhrase(
      WithinIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMeetsIntervalOperatorPhrase(
      MeetsIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOverlapsIntervalOperatorPhrase(
      OverlapsIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStartsIntervalOperatorPhrase(
      StartsIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitEndsIntervalOperatorPhrase(
      EndsIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInvocationTerm(InvocationTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLiteralTerm(LiteralTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExternalConstantTerm(ExternalConstantTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIntervalSelectorTerm(IntervalSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleSelectorTerm(TupleSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInstanceSelectorTerm(InstanceSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitListSelectorTerm(ListSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeSelectorTerm(CodeSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConceptSelectorTerm(ConceptSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitParenthesizedTerm(ParenthesizedTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedMemberInvocation(QualifiedMemberInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedFunctionInvocation(
      QualifiedFunctionInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedFunction(QualifiedFunctionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMemberInvocation(MemberInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunctionInvocation(FunctionInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitThisInvocation(ThisInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIndexInvocation(IndexInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTotalInvocation(TotalInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunction(FunctionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRatio(RatioContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBooleanLiteral(BooleanLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitNullLiteral(NullLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    print('NULLPARENT : ${ctx.parent}');

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStringLiteral(StringLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitNumberLiteral(NumberLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLongNumberLiteral(LongNumberLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimeLiteral(DateTimeLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateLiteral(DateLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimeLiteral(TimeLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuantityLiteral(QuantityLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRatioLiteral(RatioLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIntervalSelector(IntervalSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleSelector(TupleSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleElementSelector(TupleElementSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInstanceSelector(InstanceSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInstanceElementSelector(InstanceElementSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitListSelector(ListSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDisplayClause(DisplayClauseContext ctx) {
    printIf(ctx, true);
    final int thisNode = getNextNode();
    if (ctx.childCount == 2 &&
        ctx.children![0] is TerminalNodeImpl &&
        ctx.children![0].text == 'display') {
      return _noQuoteString(ctx.children![1].text!);
    }
    throw ArgumentError('$thisNode Invalid DisplayClause');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeSelector(CodeSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConceptSelector(ConceptSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitKeyword(KeywordContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReservedWord(ReservedWordContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitKeywordIdentifier(KeywordIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitObsoleteIdentifier(ObsoleteIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunctionIdentifier(FunctionIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTypeNameIdentifier(TypeNameIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReferentialIdentifier(ReferentialIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        return visitIdentifier(child);
      }
    }

    throw ArgumentError('$thisNode Invalid ReferentialIdentifier');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReferentialOrTypeNameIdentifier(
      ReferentialOrTypeNameIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIdentifierOrFunctionIdentifier(
      IdentifierOrFunctionIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitIdentifier(IdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    return _noQuoteString(ctx.text);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExternalConstant(ExternalConstantContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitParamList(ParamListContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuantity(QuantityContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitUnit(UnitContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

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

  dynamic byContext(ParseTree ctx) {
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
    } else {
      return null;
    }
  }
}
