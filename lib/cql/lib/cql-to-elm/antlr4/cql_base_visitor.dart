// Generated from cql.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import '../../cql.dart';

/// This class provides an empty implementation of [CqlVisitor],
/// which can be extended to create a visitor which only needs to handle
/// a subset of the available methods.
///
/// [T] is the print(ctx.runtimeType); return type of the visit operation. Use `void` for
/// operations with no print(ctx.runtimeType); return type.
class CqlBaseVisitor<T> extends ParseTreeVisitor<T> implements CqlVisitor<T> {
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

  /// library: libraryDefinition? definition* statement* EOF;
  @override
  void visitLibrary(LibraryContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// This can be usingDefinition, includeDefinition, codesystemDefinition,
  /// valuesetDefinition, codeDefinition, conceptDefinition, parameterDefinition.
  @override
  void visitDefinition(DefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// libraryDefinition:
  /// 'library' qualifiedIdentifier ('version' versionSpecifier)?;
  ///  For this we're just pulling out the qualifiedIdentifier and the
  ///  versionSpecifier if they exist.
  @override
  void visitLibraryDefinition(LibraryDefinitionContext ctx) {
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
    if (id != null || version != null) {
      library.identifier = VersionedIdentifier(id: id, version: version);
    }
  }

  /// usingDefinition:
  /// 'using' modelIdentifier ('version' versionSpecifier)?;
  ///  For this we're just pulling out the modelIdentifier and the
  ///  versionSpecifier if they exist.
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
    if (localIdentifier != null || version != null) {
      library.usings ??= UsingDefs();
      // TODO(Dokotela): I don't know if this works for other identifiers
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
  }

  /// includeDefinition:
  /// 	'include' qualifiedIdentifier ('version' versionSpecifier)? (
  /// 		'called' localIdentifier
  /// )?;
  /// Can have 3 parts to this expression, a qualifiedIdentifier, a
  /// versionSpecifier, and a localIdentifier.
  @override
  void visitIncludeDefinition(IncludeDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    String? localIdentifier;
    String? path;
    String? version;

    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifiedIdentifierContext) {
        path = visitQualifiedIdentifier(child);
      } else if (child is LocalIdentifierContext) {
        localIdentifier = visitLocalIdentifier(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      }
    }
    if (localIdentifier != null || path != null || version != null) {
      library.includes ??= IncludeDefs();
      library.includes!.def.add(IncludeDef(
          localIdentifier: localIdentifier, path: path, version: version));
    }
  }

  /// This is just an identifier, that is, just a String.
  @override
  String visitLocalIdentifier(LocalIdentifierContext ctx) =>
      _noQuoteString(ctx.text);

  /// accessModifier: 'public' | 'private';
  @override
  AccessModifier visitAccessModifier(AccessModifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.text == 'public') {
      return AccessModifier.public;
    } else if (ctx.text == 'private') {
      return AccessModifier.private;
    } else {
      throw ArgumentError('$thisNode Invalid AccessModifier');
    }
  }

  /// parameterDefinition:
  /// 	accessModifier? 'parameter' identifier (typeSpecifier)? (
  /// 		'default' expression
  /// 	)?;
  @override
  void visitParameterDefinition(ParameterDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    String name = '';
    TypeSpecifier? typeSpecifier;
    AccessModifier accessLevel = AccessModifier.public;
    Expression? defaultExpression;

    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      } else if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else {
        final result = byContext(child);
        if (result is Expression) {
          defaultExpression = result;
        }
      }
    }
    if (typeSpecifier != null) {
      library.parameters ??= ParameterDefs();
      library.parameters!.def.add(ParameterDef(
        name: name,
        parameterTypeSpecifier: typeSpecifier,
        accessLevel: accessLevel,
        defaultExpression: defaultExpression,
      ));
    }
  }

  /// codesystemDefinition:
  /// 	accessModifier? 'codesystem' identifier ':' codesystemId (
  /// 		'version' versionSpecifier
  /// 	)?;
  @override
  void visitCodesystemDefinition(CodesystemDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    AccessModifier accessLevel = AccessModifier.public;
    String? name;
    String? id;
    String? version;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is CodesystemIdContext) {
        id = visitCodesystemId(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      }
    }
    if (name != null || id != null || version != null) {
      library.codeSystems ??= CodeSystemDefs();
      library.codeSystems!.def.add(CodeSystemDef(
        name: name,
        id: id,
        version: version,
        accessLevel: accessLevel,
      ));
    }
  }

  /// valuesetDefinition:
  /// 	accessModifier? 'valueset' identifier ':' valuesetId (
  /// 		'version' versionSpecifier
  /// 	)? codesystems?;
  @override
  void visitValuesetDefinition(ValuesetDefinitionContext ctx) {
    library.valueSets ??= ValueSetDefs();

    String? name;
    String? id;

    final int thisNode = getNextNode();
    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is ValuesetIdContext) {
        id = visitValuesetId(child);
      }
    }

    if (name != null || id != null) {
      library.valueSets!.def.add(ValueSetDef(id: id, name: name));
    }
  }

  /// codesystems:
  /// 	'codesystems' '{' codesystemIdentifier (
  /// 		',' codesystemIdentifier
  /// )* '}';
  @override
  dynamic visitCodesystems(CodesystemsContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// codesystemIdentifier: (libraryIdentifier '.')? identifier;
  @override
  CodeSystemRef visitCodesystemIdentifier(CodesystemIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    String? name;
    String? libraryName;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is LibraryIdentifierContext) {
        libraryName = visitLibraryIdentifier(child);
      }
    }
    if (name != null || libraryName != null) {
      return CodeSystemRef(name: name, libraryName: libraryName);
    }
    throw ArgumentError('$thisNode Invalid CodesystemIdentifier');
  }

  /// libraryIdentifier: identifier;
  /// Should just be another String identfier, and should be able to return the
  /// unquoted text.
  @override
  String visitLibraryIdentifier(LibraryIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return _noQuoteString(ctx.text);
  }

  /// codeDefinition:
  /// 	accessModifier? 'code' identifier ':' codeId 'from' codesystemIdentifier displayClause?;
  @override
  void visitCodeDefinition(CodeDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    AccessModifier accessLevel = AccessModifier.public;
    String? name;
    String? id;
    CodeSystemRef? codeSystem;
    String? display;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is CodeIdContext) {
        id = visitCodeId(child);
      } else if (child is CodesystemIdentifierContext) {
        codeSystem = visitCodesystemIdentifier(child);
      } else if (child is DisplayClauseContext) {
        display = visitDisplayClause(child);
      }
    }

    if (name != null && id != null) {
      library.codes ??= CodeDefs();

      library.codes!.def.add(CodeDef(
        name: name,
        id: id,
        display: display,
        codeSystem: codeSystem,
        accessLevel: accessLevel,
      ));
    }
  }

// conceptDefinition:
// 	accessModifier? 'concept' identifier ':' '{' codeIdentifier (
// 		',' codeIdentifier
// 	)* '}' displayClause?;
  @override
  dynamic visitConceptDefinition(ConceptDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    AccessModifier accessLevel = AccessModifier.public;
    String? name;
    String? display;
    List<Ref> code = [];

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is CodeIdentifierContext) {
        code.add(visitCodeIdentifier(child));
      } else if (child is DisplayClauseContext) {
        display = visitDisplayClause(child);
      }
    }
    if (name != null) {
      library.concepts ??= ConceptDefs();
      library.concepts!.def.add(ConceptDef(
        name: name,
        display: display,
        code: code,
        accessLevel: accessLevel,
      ));
    } else {
      throw ArgumentError('$thisNode Invalid ConceptDefinition');
    }
  }

  /// codeIdentifier: (libraryIdentifier '.')? identifier;
  @override
  IdentifierRef visitCodeIdentifier(CodeIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      }
    }
    if (name != null) {
      return IdentifierRef(name: name);
    }
    throw ArgumentError('Invalid CodeIdentifier');
  }

  /// codesystemId: STRING;
  @override
  String visitCodesystemId(CodesystemIdContext ctx) => _noQuoteString(ctx.text);

  /// valuesetId: STRING;
  @override
  String visitValuesetId(ValuesetIdContext ctx) => _noQuoteString(ctx.text);

  /// versionSpecifier: STRING;
  @override
  String visitVersionSpecifier(VersionSpecifierContext ctx) =>
      _noQuoteString(ctx.text);

  /// codeId: STRING;
  @override
  String visitCodeId(CodeIdContext ctx) => _noQuoteString(ctx.text);

  ///  typeSpecifier:
  /// 	namedTypeSpecifier
  /// 	| listTypeSpecifier
  /// 	| intervalTypeSpecifier
  /// 	| tupleTypeSpecifier
  /// 	| choiceTypeSpecifier;
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

  /// namedTypeSpecifier: (qualifier '.')* referentialOrTypeNameIdentifier;
  @override
  NamedTypeSpecifier? visitNamedTypeSpecifier(NamedTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? qualifier;
    String? referentialOrTypeNameIdentifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifierContext) {
        qualifier = visitQualifier(child);
      }
      if (child is ReferentialOrTypeNameIdentifierContext) {
        referentialOrTypeNameIdentifier =
            visitReferentialOrTypeNameIdentifier(child);
      }
    }
    // TODO(Dokotela): unclear what to do with qualifiers
    if (referentialOrTypeNameIdentifier != null) {
      return NamedTypeSpecifier(
          namespace: QName.fromFull(referentialOrTypeNameIdentifier));
    } else {
      throw ArgumentError('$thisNode Invalid NamedTypeSpecifier');
    }
  }

  /// modelIdentifier: identifier;
  @override
  String visitModelIdentifier(ModelIdentifierContext ctx) =>
      _noQuoteString(ctx.text);

  /// listTypeSpecifier: 'List' '<' typeSpecifier '>';
  @override
  ListTypeSpecifier visitListTypeSpecifier(ListTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        return ListTypeSpecifier(
            elementTypeSpecifier: visitTypeSpecifier(child));
      }
    }
    throw ArgumentError('$thisNode Invalid ListTypeSpecifier');
  }

  /// intervalTypeSpecifier: 'Interval' '<' typeSpecifier '>';
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

  /// tupleTypeSpecifier:
  /// 'Tuple' '{' tupleElementDefinition (
  /// 	',' tupleElementDefinition
  /// )* '}';
  @override
  TupleTypeSpecifier visitTupleTypeSpecifier(TupleTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    List<TupleTypeSpecifierElement> element = <TupleTypeSpecifierElement>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TupleElementDefinitionContext) {
        element.add(visitTupleElementDefinition(child));
      }
    }
    return TupleTypeSpecifier(element: element.isEmpty ? null : element);
  }

  /// tupleElementDefinition: referentialIdentifier typeSpecifier;
  @override
  TupleTypeSpecifierElement visitTupleElementDefinition(
      TupleElementDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    TypeSpecifier? typeSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }
    if (name != null && typeSpecifier != null) {
      return TupleTypeSpecifierElement(elementType: typeSpecifier, name: name);
    } else {
      throw ArgumentError('$thisNode Invalid TupleElementDefinition');
    }
  }

  /// choiceTypeSpecifier:
  /// 'Choice' '<' typeSpecifier (',' typeSpecifier)* '>';
  @override
  dynamic visitChoiceTypeSpecifier(ChoiceTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    List<TypeSpecifier> choice = <TypeSpecifier>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        final newTypeSpecifier = visitTypeSpecifier(child);
        if (newTypeSpecifier != null) {
          choice.add(newTypeSpecifier);
        }
      }
    }
    if (choice.isNotEmpty) {
      return ChoiceTypeSpecifier(choice: choice);
    } else {
      throw ArgumentError('$thisNode Invalid ChoiceTypeSpecifier');
    }
  }

  /// statement:
  // expressionDefinition
  // | contextDefinition
  // | functionDefinition;
  @override
  void visitStatement(StatementContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    Element? statement;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionDefinitionContext) {
        statement = visitExpressionDefinition(child);
      }
      if (child is ContextDefinitionContext) {
        statement = visitContextDefinition(child);
      } else if (child is FunctionDefinitionContext) {
        statement = visitFunctionDefinition(child);
      }
    }
    if (statement != null) {
      library.statements ??= ExpressionDefs();
      library.statements!.def.add(statement);
    }
  }

  /// This should be of the form:
  /// expressionDefinition:
  /// 'define' accessModifier? identifier ':' expression;
  /// It should therefore have at least 4 children, and there may be a term
  /// between the 'define' TerminalNodeImpl and the identifier.
  @override
  ExpressionDef visitExpressionDefinition(ExpressionDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    AccessModifier accessLevel = AccessModifier.public;
    String? name;
    Expression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else {
        final result = byContext(child);
        if (result is Expression) {
          expression = result;
        }
      }
    }
    if (name != null) {
      return ExpressionDef(
        name: name,
        context: library.contexts != null && library.contexts!.def.isNotEmpty
            ? library.contexts!.def.first.name
            : 'Patient',
        expression: expression,
        accessLevel: accessLevel,
      );
    }
    throw ArgumentError('$thisNode Invalid ExpressionDefinition');
  }

  /// contextDefinition: 'context' (modelIdentifier '.')? identifier;
  @override
  ContextDef visitContextDefinition(ContextDefinitionContext ctx) {
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
      return ContextDef(name: name);
    }
    throw ArgumentError('$thisNode Invalid ContextDefinition');
  }

  /// functionDefinition:
  /// 'define' accessModifier? 'fluent'? 'function' identifierOrFunctionIdentifier '(' (
  ///	operandDefinition (',' operandDefinition)*
  /// )? ')' ('returns' typeSpecifier)? ':' (
  /// 	functionBody
  ///	| 'external'
  /// );
  // TODO(Dokotela): This is a very complicated function
  @override
  dynamic visitFunctionDefinition(FunctionDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    AccessModifier accessLevel = AccessModifier.public;
    String? name;
    List<OperandDef>? operand;
    TypeSpecifier? returnType;
    Element? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is IdentifierOrFunctionIdentifierContext) {
        name = visitIdentifierOrFunctionIdentifier(child);
      } else if (child is OperandDefinitionContext) {
        operand ??= <OperandDef>[];
        operand.add(visitOperandDefinition(child));
      } else if (child is TypeSpecifierContext) {
        returnType = visitTypeSpecifier(child);
      } else if (child is FunctionBodyContext) {
        expression = visitFunctionBody(child);
      }
    }
    if (name != null) {
      return FunctionDef(
        // name: name,
        operand: operand,
        // returnType: returnType,
        // expression: expression,
        // accessLevel: accessLevel,
      );
    }

    visitChildren(ctx);
  }

  /// operandDefinition: referentialIdentifier typeSpecifier;
  @override
  OperandDef visitOperandDefinition(OperandDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? referentialIdentifier;
    TypeSpecifier? typeSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        referentialIdentifier = visitReferentialIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }
    if (referentialIdentifier != null && typeSpecifier != null) {
      return OperandDef(
        name: referentialIdentifier,
        operandTypeSpecifier: typeSpecifier,
      );
    }
    throw ArgumentError('$thisNode Invalid OperandDefinition');
  }

  /// functionBody: expression;
  @override
  ExpressionDef visitFunctionBody(FunctionBodyContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionDefinitionContext) {
        return visitExpressionDefinition(child);
      }
    }

    throw ArgumentError('$thisNode Invalid FunctionBody');
  }

  /// querySource:
  /// retrieve
  /// | qualifiedIdentifierExpression
  /// | '(' expression ')';
  @override
  Expression visitQuerySource(QuerySourceContext ctx) {
    printIf(ctx, true);
    dynamic retrieve;
    IdentifierRef? qualifiedIdentifierExpression;
    Expression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is RetrieveContext) {
        return visitRetrieve(child);
      } else if (child is QualifiedIdentifierExpressionContext) {
        return visitQualifiedIdentifierExpression(child);
      } else {
        final result = byContext(child);
        if (result is Expression) {
          return result;
        }
      }
    }

    throw ArgumentError('Invalid QuerySource');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAliasedQuerySource(AliasedQuerySourceContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? alias;
    Expression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AliasContext) {
        alias = visitAlias(child);
      } else if (child is QuerySourceContext) {
        final temp = visitQuerySource(child);
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
    Ref? codes;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is NamedTypeSpecifierContext) {
        name = visitNamedTypeSpecifier(child);
      } else if (child is TerminologyContext) {
        final temp = visitTerminology(child);
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
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result != null) {
        if (result is Expression) {
          return result;
        }
      } else if (result is String) {
        return ValueSetRef(name: result);
      }
    }
    throw ArgumentError('$thisNode Invalid Terminology');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitQualifier(QualifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        return visitIdentifier(child);
      }
    }
    throw ArgumentError('$thisNode Invalid Qualifier');
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
  IdentifierRef visitQualifiedIdentifierExpression(
      QualifiedIdentifierExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    String? libraryName;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifierContext) {
        libraryName = visitQualifier(child);
      } else if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      }
    }
    if (name != null) {
      return IdentifierRef(name: name, libraryName: libraryName);
    } else {
      throw ArgumentError('$thisNode Invalid QualifiedIdentifierExpression');
    }
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

  ///  The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  NaryExpression visitInFixSetExpression(InFixSetExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    Expression? left;
    Expression? right;
    String? operator;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        operator = child.text;
      } else {
        final result = byContext(child);
        if (result is Expression) {
          if (left == null) {
            left = result;
          } else {
            right = result;
          }
        }
      }
    }

    if (left != null && right != null && operator != null) {
      if (operator == '|' || operator == 'union') {
        return Union(left: left, right: right);
      } else if (operator == 'intersect') {
        return Intersect(left: left, right: right);
      } else if (operator == 'except') {
        return Except(left: left, right: right);
      } else {
        throw ArgumentError('$thisNode Invalid InFixSetExpression');
      }
    } else {
      throw ArgumentError('$thisNode Invalid InFixSetExpression');
    }
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
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        return byContext(child);
      }
    }
    throw ArgumentError('$thisNode Invalid TermExpression');
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
    printIf(ctx, true);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      return result;
    }
    throw ArgumentError('$thisNode Invalid TermExpressionTerm');
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
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is MemberInvocationContext) {
        return visitMemberInvocation(child);
      } else if (child is FunctionInvocationContext) {
        return visitFunctionInvocation(child);
      } else if (child is ThisInvocationContext) {
        return visitThisInvocation(child);
      } else if (child is IndexInvocationContext) {
        return visitIndexInvocation(child);
      } else if (child is TotalInvocationContext) {
        return visitTotalInvocation(child);
      } else if (child is QualifiedFunctionInvocationContext) {
        return visitQualifiedFunctionInvocation(child);
      } else if (child is QualifiedMemberInvocationContext) {
        return visitQualifiedMemberInvocation(child);
      } else if (child is QualifiedFunctionContext) {
        return visitQualifiedFunction(child);
      }
    }
    throw ArgumentError('$thisNode Invalid InvocationTerm');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLiteralTerm(LiteralTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    const String namespaceURI = 'urn:hl7-org:elm-types:r1';
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is BooleanLiteralContext) {
        return LiteralBoolean(value: visitBooleanLiteral(child));
      } else if (child is NullLiteralContext) {
        return NullExpression();
      } else if (child is StringLiteralContext) {
        return LiteralString(value: visitStringLiteral(child));
      } else if (child is NumberLiteralContext) {
        final number = visitNumberLiteral(child);
        if (number is int) {
          return LiteralInteger(value: number);
        } else if (number is double) {
          return LiteralDecimal(value: number);
        } else if (number is BigInt) {
          return LiteralLongNumber(value: number as BigInt);
        }
      } else if (child is LongNumberLiteralContext) {
        return LiteralLongNumber(value: visitLongNumberLiteral(child));
      } else if (child is DateTimeLiteralContext) {
        return LiteralDateTime(value: visitDateTimeLiteral(child));
      } else if (child is DateLiteralContext) {
        return LiteralDate(value: visitDateLiteral(child));
      } else if (child is TimeLiteralContext) {
        return LiteralTime(value: visitTimeLiteral(child));
      } else if (child is QuantityLiteralContext) {
        return LiteralQuantity(value: visitQuantityLiteral(child));
      } else if (child is RatioLiteralContext) {}
    }
    throw ArgumentError('$thisNode Invalid LiteralTerm');
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
    Expression? low;
    Expression? high;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        print(child.runtimeType);
        final result = byContext(child);
        if (result is Expression) {
          if (low == null) {
            low = result;
          } else {
            high = result;
          }
        }
      }
    }

    if (low != null && high != null) {
      return IntervalExpression(low: low, high: high);
    } else {
      throw ArgumentError('$thisNode Invalid IntervalSelectorTerm');
    }
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
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is InstanceSelectorContext) {
        return visitInstanceSelector(child);
      }
    }

    throw ArgumentError('$thisNode Invalid InstanceSelectorTerm');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitListSelectorTerm(ListSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ListSelectorContext) {
        final element = visitListSelector(child);
        if (element is List<Element>) {
          return ListTypeSpecifier(element: element);
        }
      }
    }

    throw ArgumentError('$thisNode Invalid ListSelectorTerm');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeSelectorTerm(CodeSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is CodeSelectorContext) {
        return visitCodeSelector(child);
      }
    }

    throw ArgumentError('$thisNode Invalid CodeSelectorTerm');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConceptSelectorTerm(ConceptSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ConceptSelectorContext) {
        return visitConceptSelector(child);
      }
    }
    throw ArgumentError('$thisNode Invalid ConceptSelectorTerm');
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
  String visitMemberInvocation(MemberInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      return byContext(child);
    }
    throw ArgumentError('$thisNode Invalid MemberInvocation');
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
  bool visitBooleanLiteral(BooleanLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 1 && ctx.getChild(0) is TerminalNodeImpl) {
      return ctx.getChild(0)!.text == 'true';
    }
    throw ArgumentError('$thisNode Invalid BooleanLiteral');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitNullLiteral(NullLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitStringLiteral(StringLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 1 && ctx.getChild(0) is TerminalNodeImpl) {
      return _noQuoteString(ctx.getChild(0)!.text!);
    }
    throw ArgumentError('$thisNode Invalid StringLiteral');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  num visitNumberLiteral(NumberLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 1 && ctx.getChild(0) is TerminalNodeImpl) {
      return num.parse(ctx.getChild(0)!.text!);
    }
    throw ArgumentError('$thisNode Invalid NumberLiteral');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  BigInt visitLongNumberLiteral(LongNumberLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 1 && ctx.getChild(0) is TerminalNodeImpl) {
      return BigInt.parse(ctx.getChild(0)!.text!);
    }
    throw ArgumentError('$thisNode Invalid LongNumberLiteral');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  DateTime visitDateTimeLiteral(DateTimeLiteralContext ctx) {
    printIf(ctx, true);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        return DateTime.parse(child.text!.replaceFirst('@', ''));
      }
    }
    throw ArgumentError('$thisNode Invalid DateTimeLiteral');
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
    QName? classType;
    List<InstanceElement> element = <InstanceElement>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is NamedTypeSpecifierContext) {
        classType = visitNamedTypeSpecifier(child)?.namespace;
      } else if (child is InstanceElementSelectorContext) {
        final newElement = visitInstanceElementSelector(child);
        if (newElement is InstanceElement) {
          element.add(newElement);
        }
      }
    }

    if (classType != null) {
      return Instance(
          classType: classType, element: element.isEmpty ? null : element);
    }

    throw ArgumentError('$thisNode Invalid InstanceSelector');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInstanceElementSelector(InstanceElementSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    Expression? value;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      } else {
        final result = byContext(child);
        if (result is Expression) {
          value = result;
        }
      }
    }

    if (name != null && value != null) {
      return InstanceElement(name: name, value: value);
    }

    throw ArgumentError('$thisNode Invalid InstanceElementSelector');
  }

  /// So best I can tell this should return a list of Expressions. However, in
  /// some casees they may not be new expressions, but rather references to
  /// existing expressions. So we're going to check if it's an Element. If it
  /// is, we can just add it right away. If it's not, if it's a String, we'll
  /// check to see if it's a previously defined Expression.
  @override
  dynamic visitListSelector(ListSelectorContext ctx) {
    printIf(ctx, true);
    final int thisNode = getNextNode();
    List<Element> element = <Element>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result is Element) {
        element.add(result);
      } else if (result is String) {
        final index = library.statements?.def.indexWhere(
            (element) => element is ExpressionDef && element.name == result);
        if (index != null && index >= 0) {
          element.add(ExpressionRef(name: result));
        }
      }
    }
    if (element.isNotEmpty) {
      return element;
    }

    throw ArgumentError('$thisNode Invalid ListSelector');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDisplayClause(DisplayClauseContext ctx) {
    printIf(ctx);
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
  Code visitCodeSelector(CodeSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? display;
    CodeSystemRef? codeSystem;
    String? code;
    if (ctx.childCount >= 3 && ctx.getChild(1)?.text != null) {
      code = _noQuoteString(ctx.getChild(1)!.text!);
    }
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is CodesystemIdentifierContext) {
        codeSystem = visitCodesystemIdentifier(child);
      } else if (child is DisplayClauseContext) {
        display = visitDisplayClause(child);
      }
    }
    if (code != null && codeSystem != null) {
      return Code(code: code, system: codeSystem, display: display);
    }

    throw ArgumentError('$thisNode Invalid CodeSelector');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConceptSelector(ConceptSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? display;
    List<Code> code = <Code>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is DisplayClauseContext) {
        display = visitDisplayClause(child);
      } else if (child is CodeSelectorContext) {
        final newCode = visitCodeSelector(child);
        code.add(newCode);
      }
    }
    return Concept(display: display, code: code);
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
  dynamic visitKeywordIdentifier(KeywordIdentifierContext ctx) =>
      _noQuoteString(ctx.text);

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

  /// Reserved words that are also type names
  /// typeNameIdentifier: 'Code' | 'Concept' | 'date' | 'time';
  @override
  dynamic visitTypeNameIdentifier(TypeNameIdentifierContext ctx) =>
      _noQuoteString(ctx.text);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitReferentialIdentifier(
    ReferentialIdentifierContext ctx,
  ) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        return visitIdentifier(child);
      } else if (child is KeywordIdentifierContext) {
        return visitKeywordIdentifier(child);
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
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        return visitReferentialIdentifier(child);
      } else if (child is TypeNameIdentifierContext) {
        return visitTypeNameIdentifier(child);
      }
    }
    throw ArgumentError('$thisNode Invalid ReferentialOrTypeNameIdentifier');
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

  /// identifier: IDENTIFIER | DELIMITEDIDENTIFIER | QUOTEDIDENTIFIER;
  @override
  String visitIdentifier(IdentifierContext ctx) => _noQuoteString(ctx.text);

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
