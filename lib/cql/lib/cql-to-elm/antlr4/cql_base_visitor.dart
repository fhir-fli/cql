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
  Library library = Library();
  final modelInfoProvider = StandardModelInfoProvider();
  int nodeNumber = 0;
  final shouldPrint = false;

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
  dynamic visitAggregateClause(AggregateClauseContext ctx) {
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
  dynamic visitAlias(AliasContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return _noQuoteString(ctx.text);
  }

  /// aliasedQuerySource: querySource alias;
  @override
  RelationshipClause visitAliasedQuerySource(AliasedQuerySourceContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    Expression? querySource;
    String? alias;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QuerySourceContext) {
        querySource = visitQuerySource(child);
      } else if (child is AliasContext) {
        alias = visitAlias(child);
      }
    }
    if (querySource != null && alias != null) {
      return RelationshipClause(alias: alias, expression: querySource);
    } else {
      throw ArgumentError('$thisNode: Invalid AliasedQuerySource');
    }
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  And visitAndExpression(AndExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    List<Expression> operand = [];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is Expression) {
          operand.add(result);
        }
      }
    }
    return And(operand: operand);
  }

  /// ('starts' | 'ends' | 'occurs')? quantityOffset? temporalRelationship
  ///	dateTimePrecisionSpecifier? ('start' | 'end')?
  @override
  Expression visitBeforeOrAfterIntervalOperatorPhrase(
      BeforeOrAfterIntervalOperatorPhraseContext ctx,
      [Expression? left,
      Expression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? startsEndsOccurs;
    LiteralQuantity? quantityOffset;
    String? temporalRelationship;
    DateTimePrecision? dateTimePrecisionSpecifier;
    String? startEnd;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'starts' ||
            child.text == 'ends' ||
            child.text == 'occurs') {
          startsEndsOccurs = child.text;
        } else if (child.text == 'start' || child.text == 'end') {
          startEnd = child.text;
        }
      } else if (child is QuantityOffsetContext) {
        quantityOffset = visitQuantityOffset(child);
      } else if (child is TemporalRelationshipContext) {
        temporalRelationship = visitTemporalRelationship(child);
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = visitDateTimePrecisionSpecifier(child);
      }
    }

    if (temporalRelationship != null) {
      final before = temporalRelationship.contains('before');
      final after = temporalRelationship.contains('after');
      final leftOperand = startsEndsOccurs != null && left != null
          ? (startsEndsOccurs == 'starts'
              ? Start(operand: left)
              : (startsEndsOccurs == 'ends' ? End(operand: left) : null))
          : null;
      final rightOperand = before
          ? Subtract(operand: [
              if (right != null) right,
              if (quantityOffset != null) Literal.fromType(quantityOffset)
            ])
          : after
              ? Add(operand: [
                  if (right != null) right,
                  if (quantityOffset != null) Literal.fromType(quantityOffset)
                ])
              : null;
      final same = temporalRelationship.contains('on or') ||
              temporalRelationship.contains('or on')
          // TODO(Dokotela): come back and fix this
          // ||
          // (quantityOffset?.offset?.contains('more') ?? false
          // )
          ;
      if (before) {
        if (same) {
          return SameOrBefore(
            operand: [
              if (leftOperand != null) leftOperand,
              if (rightOperand != null) rightOperand,
            ],
            precision: dateTimePrecisionSpecifier,
          );
        } else {
          return Before(
            operand: [
              if (leftOperand != null) leftOperand,
              if (rightOperand != null) rightOperand,
            ],
            precision: dateTimePrecisionSpecifier,
          );
        }
      } else if (after) {
        if (same) {
          return SameOrAfter(
            operand: [
              if (leftOperand != null) leftOperand,
              if (rightOperand != null) rightOperand,
            ],
            precision: dateTimePrecisionSpecifier,
          );
        } else {
          return After(
            operand: [
              if (leftOperand != null) leftOperand,
              if (rightOperand != null) rightOperand,
            ],
            precision: dateTimePrecisionSpecifier,
          );
        }
      }
    }
    throw ArgumentError(
        '$thisNode Invalid BeforeOrAfterIntervalOperatorPhrase');
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
  dynamic visitBooleanExpression(BooleanExpressionContext ctx) {
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
  dynamic visitCaseExpressionItem(CaseExpressionItemContext ctx) {
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
  dynamic visitCastExpression(CastExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
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

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeComparator(CodeComparatorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
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

  /// codeId: STRING;
  @override
  String visitCodeId(CodeIdContext ctx) => _noQuoteString(ctx.text);

  /// codeIdentifier: (libraryIdentifier '.')? identifier;
  @override
  CodeRef visitCodeIdentifier(CodeIdentifierContext ctx) {
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
    if (name != null) {
      return CodeRef(name: name, libraryName: libraryName);
    }
    throw ArgumentError('Invalid CodeIdentifier');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodePath(CodePathContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    throw ArgumentError('$thisNode Invalid CodePath');
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

  /// codesystemId: STRING;
  @override
  String visitCodesystemId(CodesystemIdContext ctx) => _noQuoteString(ctx.text);

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
    if (name != null) {
      return CodeSystemRef(name: name, libraryName: libraryName);
    }
    throw ArgumentError('$thisNode Invalid CodesystemIdentifier');
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
    List<CodeRef> code = [];

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
  dynamic visitConcurrentWithIntervalOperatorPhrase(
      ConcurrentWithIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// contextDefinition: 'context' (modelIdentifier '.')? identifier;
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
      for (final model in library.usings?.def ?? <UsingDef>[]) {
        if (model.localIdentifier != null) {
          final modelInfo = modelInfoProvider.load(ModelIdentifier(
              id: model.localIdentifier!, version: model.version));
          if (modelInfo != null) {
            final index = modelInfo.typeInfo.indexWhere((element) =>
                (element is ClassInfo &&
                    (element.label == name ||
                        element.name == name ||
                        element.identifier == name)) ||
                (element is ProfileInfo &&
                    (element.label == name ||
                        element.name == name ||
                        element.identifier == name)));
            if (index != -1) {
              library.statements ??= ExpressionDefs();
              library.statements!.def.add(
                ExpressionDef(
                  name: name,
                  context: name,
                  expression: SingletonFrom(
                    operand: Retrieve(
                      templateId: name,
                      dataType:
                          QName.fromNamespace(modelInfo.url.toString(), name),
                    ),
                  ),
                ),
              );
            }
          }
        }
      }
    } else {
      throw ArgumentError('$thisNode Invalid ContextDefinition');
    }
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Ref visitContextIdentifier(ContextIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifiedIdentifierExpressionContext) {
        return visitQualifiedIdentifierExpression(child);
      }
    }
    throw ArgumentError('$thisNode Invalid ContextIdentifier');
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
  dynamic visitDateLiteral(DateLiteralContext ctx) {
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
  DateTime visitDateTimeLiteral(DateTimeLiteralContext ctx) {
    printIf(ctx);
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
  dynamic visitDateTimePrecision(DateTimePrecisionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  DateTimePrecision visitDateTimePrecisionSpecifier(
      DateTimePrecisionSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 1 && ctx.getChild(0) is TerminalNodeImpl) {
      return DateTimePrecisionExtension.fromJson(ctx.getChild(0)!.text);
    }
    throw ArgumentError('$thisNode Invalid DateTimePrecisionSpecifier');
  }

  /// This can be usingDefinition, includeDefinition, codesystemDefinition,
  /// valuesetDefinition, codeDefinition, conceptDefinition, parameterDefinition.
  @override
  void visitDefinition(DefinitionContext ctx) {
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
  dynamic visitDifferenceExpressionTerm(DifferenceExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
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
  dynamic visitDurationBetweenExpression(DurationBetweenExpressionContext ctx) {
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
  dynamic visitElementExtractorExpressionTerm(
      ElementExtractorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    throw ArgumentError('$thisNode Invalid ElementExtractorExpressionTerm');
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
  dynamic visitEqualityExpression(EqualityExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitExclusiveRelativeQualifier(
          ExclusiveRelativeQualifierContext ctx) =>
      _noQuoteString(ctx.text);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExistenceExpression(ExistenceExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
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
  dynamic visitExternalConstantTerm(ExternalConstantTermContext ctx) {
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
  dynamic visitFunctionInvocation(FunctionInvocationContext ctx) {
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
  dynamic visitIdentifierOrFunctionIdentifier(
      IdentifierOrFunctionIdentifierContext ctx) {
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
  dynamic visitImpliesExpression(ImpliesExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// expression ('|' | 'union' | 'intersect' | 'except') expression
  @override
  NaryExpression visitInFixSetExpression(InFixSetExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 3) {
      final left = byContext(ctx.getChild(0)!);
      final operator = ctx.getChild(1)!.text;
      final right = byContext(ctx.getChild(2)!);

      if (left != null &&
          left is Expression &&
          right != null &&
          right is Expression &&
          operator != null) {
        if (operator == '|' || operator == 'union') {
          return Union(operand: [left, right]);
        } else if (operator == 'intersect') {
          return Intersect(operand: [left, right]);
        } else if (operator == 'except') {
          return Except(operand: [left, right]);
        }
      }
    }
    throw ArgumentError('$thisNode Invalid InFixSetExpression');
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

  /// ('starts' | 'ends' | 'occurs')?
  /// 'properly'?
  /// ('during' | 'included in')
  /// dateTimePrecisionSpecifier?
  @override
  IncludedIn visitIncludedInIntervalOperatorPhrase(
      IncludedInIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? startsEndsOccurs;
    bool? properly;
    String? duringIncludedIn;
    DateTimePrecision? dateTimePrecisionSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'starts' ||
            child.text == 'ends' ||
            child.text == 'occurs') {
          startsEndsOccurs = child.text;
        } else if (child.text == 'properly') {
          properly = true;
        } else if (child.text == 'during' || child.text == 'included in') {
          duringIncludedIn = child.text;
        }
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = visitDateTimePrecisionSpecifier(child);
      }
    }

    return IncludedIn(operand: []);
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
  dynamic visitIndexInvocation(IndexInvocationContext ctx) {
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
  dynamic visitInequalityExpression(InequalityExpressionContext ctx) {
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
    Ref? name;
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

    if (name?.name != null && value != null) {
      return InstanceElement(name: name!.name, value: value);
    }

    throw ArgumentError('$thisNode Invalid InstanceElementSelector');
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
  IntervalExpression visitIntervalSelector(IntervalSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    LiteralType? low;
    LiteralType? high;
    bool lowClosed = true;
    bool highClosed = true;
    bool recordHigh = false;

    if (ctx.childCount == 6) {
      lowClosed = ctx.getChild(1)?.text == '(' ? false : true;
      highClosed = ctx.getChild(5)?.text == ')' ? false : true;
      final child2 = ctx.getChild(2);
      final child5 = ctx.getChild(4);
      if (child2 != null) {
        low = byContext(child2);
      }
      if (child5 != null) {
        high = byContext(child5);
      }
      if (low.runtimeType == high.runtimeType) {
        return IntervalExpression(
          low: lowClosed || low == null ? null : Literal.fromType(low),
          high: highClosed || high == null ? null : Literal.fromType(high),
          highClosedExpression:
              highClosed && high != null ? Literal.fromType(high) : null,
          lowClosedExpression:
              lowClosed && low != null ? Literal.fromType(low) : null,
          lowClosed: lowClosed,
          highClosed: highClosed,
        );
      }
      throw ArgumentError('$thisNode Invalid IntervalSelector');
    } else {
      throw ArgumentError('$thisNode Invalid IntervalSelector');
    }
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  IntervalExpression visitIntervalSelectorTerm(
      IntervalSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IntervalSelectorContext) {
        return visitIntervalSelector(child);
      }
    }

    throw ArgumentError('$thisNode Invalid IntervalSelectorTerm');
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

  ///  expressionTerm '.' qualifiedInvocation
  @override
  Property visitInvocationExpressionTerm(InvocationExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    dynamic expressionTerm;
    Ref? qualifiedInvocation;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TermExpressionTermContext) {
        expressionTerm = visitTermExpressionTerm(child);
      } else if (child is QualifiedInvocationContext) {
        if (child is QualifiedMemberInvocationContext) {
          qualifiedInvocation = visitQualifiedMemberInvocation(child);
        } else if (child is QualifiedFunctionInvocationContext) {
          qualifiedInvocation = visitQualifiedFunctionInvocation(child);
        }
      }
    }
    if (qualifiedInvocation?.name != null) {
      return Property(
          scope: expressionTerm is Ref ? expressionTerm.name : null,
          path: qualifiedInvocation!.name);
    }
    throw ArgumentError('$thisNode Invalid InvocationExpressionTerm');
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
  dynamic visitKeyword(KeywordContext ctx) {
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

  /// library: libraryDefinition? definition* statement* EOF;
  @override
  void visitLibrary(LibraryContext ctx) {
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

  /// libraryIdentifier: identifier;
  /// Should just be another String identfier, and should be able to return the
  /// unquoted text.
  @override
  String visitLibraryIdentifier(LibraryIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return _noQuoteString(ctx.text);
  }

  /// So best I can tell this should return a list of Expressions. However, in
  /// some casees they may not be new expressions, but rather references to
  /// existing expressions. So we're going to check if it's an Element. If it
  /// is, we can just add it right away. If it's not, if it's a String, we'll
  /// check to see if it's a previously defined Expression.
  @override
  dynamic visitListSelector(ListSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    List<Element> element = <Element>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result is Element) {
        element.add(result);
      } else if (result is String) {
        final index = library.statements?.def
            .indexWhere((element) => element.name == result);
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

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Literal visitLiteralTerm(LiteralTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    LiteralType? type;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is BooleanLiteralContext) {
        type = LiteralBoolean(value: visitBooleanLiteral(child));
      } else if (child is NullLiteralContext) {
        return NullExpression(valueType: QName.empty());
      } else if (child is StringLiteralContext) {
        type = LiteralString(value: visitStringLiteral(child));
      } else if (child is NumberLiteralContext) {
        final number = visitNumberLiteral(child);
        if (number is int) {
          type = LiteralInteger(value: number);
        } else if (number is double) {
          type = LiteralDecimal(value: number);
        } else if (number is BigInt) {
          type = LiteralLong(value: number as BigInt);
        }
      } else if (child is LongNumberLiteralContext) {
        type = LiteralLong(value: visitLongNumberLiteral(child));
      } else if (child is DateTimeLiteralContext) {
        type = LiteralDateTime(
            value: visitDateTimeLiteral(child).toIso8601String());
      } else if (child is DateLiteralContext) {
        type = LiteralDate(value: visitDateLiteral(child));
      } else if (child is TimeLiteralContext) {
        type = LiteralTime(value: visitTimeLiteral(child));
      } else if (child is QuantityLiteralContext) {
        type = LiteralQuantity(value: visitQuantityLiteral(child));
      } else if (child is RatioLiteralContext) {}
    }
    if (type != null) {
      return Literal.fromType(type);
    }
    throw ArgumentError('$thisNode Invalid LiteralTerm');
  }

  /// This is just an identifier, that is, just a String.
  @override
  String visitLocalIdentifier(LocalIdentifierContext ctx) =>
      _noQuoteString(ctx.text);

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
  dynamic visitMeetsIntervalOperatorPhrase(
      MeetsIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// referentialIdentifier	# memberInvocation
  @override
  Ref visitMemberInvocation(MemberInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        return visitReferentialIdentifier(child);
      }
    }
    throw ArgumentError('$thisNode Invalid MemberInvocation');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMembershipExpression(MembershipExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// modelIdentifier: identifier;
  @override
  String visitModelIdentifier(ModelIdentifierContext ctx) =>
      _noQuoteString(ctx.text);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMultiplicationExpressionTerm(
      MultiplicationExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// namedTypeSpecifier: (qualifier '.')* referentialOrTypeNameIdentifier;
  @override
  NamedTypeSpecifier? visitNamedTypeSpecifier(NamedTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? qualifier;
    Ref? referentialOrTypeNameIdentifier;
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
    if (referentialOrTypeNameIdentifier?.name != null) {
      return NamedTypeSpecifier(
          namespace: QName.fromFull(referentialOrTypeNameIdentifier!.name));
    } else {
      throw ArgumentError('$thisNode Invalid NamedTypeSpecifier');
    }
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
  dynamic visitNullLiteral(NullLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
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
  dynamic visitObsoleteIdentifier(ObsoleteIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitOffsetRelativeQualifier(OffsetRelativeQualifierContext ctx) =>
      _noQuoteString(ctx.text);

  /// operandDefinition: referentialIdentifier typeSpecifier;
  @override
  OperandDef visitOperandDefinition(OperandDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    Ref? referentialIdentifier;
    TypeSpecifier? typeSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        referentialIdentifier = visitReferentialIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }
    if (referentialIdentifier?.name != null && typeSpecifier != null) {
      return OperandDef(
        name: referentialIdentifier!.name,
        operandTypeSpecifier: typeSpecifier,
      );
    }
    throw ArgumentError('$thisNode Invalid OperandDefinition');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOrExpression(OrExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// 'overlaps' ('before' | 'after')? dateTimePrecisionSpecifier?
  @override
  dynamic visitOverlapsIntervalOperatorPhrase(
      OverlapsIntervalOperatorPhraseContext ctx) {
    printIf(ctx, true);
    final int thisNode = getNextNode();
    bool? before;
    DateTimePrecision? dateTimePrecisionSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        before = child.text == 'before'
            ? true
            : child.text == 'after'
                ? false
                : null;
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = visitDateTimePrecisionSpecifier(child);
      }
    }
    if (before == null) {
      return Overlaps(operand: [], precision: dateTimePrecisionSpecifier);
    } else if (before) {
      return OverlapsBefore(operand: [], precision: dateTimePrecisionSpecifier);
    } else {
      return OverlapsAfter(operand: [], precision: dateTimePrecisionSpecifier);
    }
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitParamList(ParamListContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
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
  dynamic visitPluralDateTimePrecision(PluralDateTimePrecisionContext ctx) {
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
  dynamic visitPolarityExpressionTerm(PolarityExpressionTermContext ctx) {
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
  dynamic visitPredecessorExpressionTerm(PredecessorExpressionTermContext ctx) {
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
  dynamic visitQualifiedFunctionInvocation(
      QualifiedFunctionInvocationContext ctx) {
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
  Ref visitQualifiedIdentifierExpression(
      QualifiedIdentifierExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    Ref? name;
    String? libraryName;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifierContext) {
        libraryName = visitQualifier(child);
      } else if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      }
    }
    if (name?.name != null) {
      return _returnRef(name!.name, libraryName);
    }
    throw ArgumentError('$thisNode Invalid QualifiedIdentifierExpression');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Ref visitQualifiedMemberInvocation(QualifiedMemberInvocationContext ctx) =>
      _returnRef(ctx.text, null);

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
  dynamic visitQualifierExpression(QualifierExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  LiteralQuantity visitQuantity(QuantityContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 2) {
      final double? value = ctx.getChild(0)!.text == null
          ? null
          : double.tryParse(ctx.getChild(0)!.text!);
      final String? unitText = ctx.getChild(1) is UnitContext
          ? visitUnit(ctx.getChild(1) as UnitContext)
          : null;
      if (value != null) {
        return LiteralQuantity(
            value: LiteralDecimal(value: value), unit: unitText);
      }
    }

    throw ArgumentError('$thisNode Invalid Quantity');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuantityLiteral(QuantityLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// quantityOffset: (quantity offsetRelativeQualifier?)
  /// | (exclusiveRelativeQualifier quantity);
  @override
  LiteralQuantity visitQuantityOffset(QuantityOffsetContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    LiteralQuantity? quantity;
    String? relativeQualifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QuantityContext) {
        quantity = visitQuantity(child);
      } else if (child is OffsetRelativeQualifierContext) {
        relativeQualifier = visitOffsetRelativeQualifier(child);
      } else if (child is ExclusiveRelativeQualifierContext) {
        relativeQualifier = visitExclusiveRelativeQualifier(child);
      }
    }
    if (quantity != null) {
      return LiteralQuantity(
        value: quantity.value,
        unit: quantity.unit,
      );
    }
    throw ArgumentError('$thisNode Invalid QuantityOffset');
  }

  /// sourceClause letClause? queryInclusionClause* whereClause? (
  /// aggregateClause
  /// | returnClause
  /// )? sortClause?;
  @override
  Query visitQuery(QueryContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    List<AliasedQuerySource> source = [];
    List<LetClause> let = [];
    List<RelationshipClause> relationship = [];
    Expression? where;
    AggregateExpression? aggregateClause;
    ReturnClause? returnClause;
    SortClause? sort;
    for (final child in ctx.children ?? <ParseTree>[]) {
      print('child: ${child.runtimeType} ${child.text}');
      if (child is SourceClauseContext) {
        source.addAll(visitSourceClause(child));
      } else if (child is LetClauseContext) {
        let.add(visitLetClause(child));
      } else if (child is QueryInclusionClauseContext) {
        relationship.add(visitQueryInclusionClause(child));
      } else if (child is WhereClauseContext) {
        where = visitWhereClause(child);
      } else if (child is AggregateClauseContext) {
        aggregateClause = visitAggregateClause(child);
      } else if (child is ReturnClauseContext) {
        returnClause = visitReturnClause(child);
      } else if (child is SortClauseContext) {
        sort = visitSortClause(child);
      }
    }
    print('Query:\n'
        'source: $source\n'
        'let: $let\n'
        'relationship: $relationship\n'
        'where: $where\n'
        'returnClause: $returnClause\n'
        'sort: $sort');

    return Query(
      source: source,
      let: let.isEmpty ? null : let,
      relationship: relationship.isEmpty ? null : relationship,
      where: where,
      returnClause: returnClause,
      sort: sort,
    );
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Query visitQueryExpression(QueryExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QueryContext) {
        return visitQuery(child);
      }
    }
    throw ArgumentError('Invalid QueryExpression');
  }

  /// queryInclusionClause: withClause | withoutClause;
  @override
  dynamic visitQueryInclusionClause(QueryInclusionClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is WithClauseContext) {
        return visitWithClause(child);
      } else if (child is WithoutClauseContext) {
        return visitWithoutClause(child);
      }
    }
    throw ArgumentError('$thisNode Invalid QueryInclusionClause');
  }

  /// querySource:
  /// retrieve
  /// | qualifiedIdentifierExpression
  /// | '(' expression ')';
  @override
  Expression visitQuerySource(QuerySourceContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
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
    throw ArgumentError('$thisNode Invalid QuerySource');
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
  dynamic visitRatioLiteral(RatioLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Ref visitReferentialIdentifier(ReferentialIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        return _returnRef(visitIdentifier(child), null);
      } else if (child is KeywordIdentifierContext) {
        return _returnRef(visitKeywordIdentifier(child), null);
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
  dynamic visitRelativeQualifier(RelativeQualifierContext ctx) {
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

  ///	'[' (contextIdentifier '->')? namedTypeSpecifier (
  ///	':' (codePath codeComparator)? terminology
  /// )? ']';
  @override
  Retrieve visitRetrieve(RetrieveContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    /// Defines arguments to the retrieve class
    Expression? context;
    NamedTypeSpecifier? name;
    Expression? codePath;
    String? codeComparator;
    Expression? codes;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ContextIdentifierContext) {
        context = visitContextIdentifier(child);
      } else if (child is NamedTypeSpecifierContext) {
        name = visitNamedTypeSpecifier(child);
      } else if (child is CodePathContext) {
        codePath = visitCodePath(child);
      } else if (child is CodeComparatorContext) {
        codeComparator = visitCodeComparator(child);
      } else if (child is TerminologyContext) {
        codes = visitTerminology(child);
      }
    }
    String? templateId;
    String? codeProperty;
    if (name != null) {
      /// This is going to search through the included models to see if the
      /// model is included. If it is, it will use the url to get the codes.
      for (final model in library.usings?.def ?? <UsingDef>[]) {
        if (model.localIdentifier != null) {
          final modelInfo = modelInfoProvider.load(ModelIdentifier(
              id: model.localIdentifier!, version: model.version));
          if (modelInfo != null) {
            final index = modelInfo.typeInfo.indexWhere((element) =>
                (element is ClassInfo &&
                    element.label == name!.namespace.localPart) ||
                (element is ProfileInfo &&
                    element.label == name!.namespace.localPart));
            if (index != -1) {
              String? localPart;
              if (modelInfo.typeInfo[index] is ClassInfo) {
                templateId =
                    (modelInfo.typeInfo[index] as ClassInfo).identifier;
                codeProperty =
                    (modelInfo.typeInfo[index] as ClassInfo).primaryCodePath;
                localPart = (modelInfo.typeInfo[index] as ClassInfo).name;
              } else if (modelInfo.typeInfo[index] is ProfileInfo) {
                templateId =
                    (modelInfo.typeInfo[index] as ProfileInfo).identifier;
                codeProperty =
                    (modelInfo.typeInfo[index] as ProfileInfo).primaryCodePath;
                localPart = (modelInfo.typeInfo[index] as ProfileInfo).name;
              }
              name.namespace = QName.fromNamespace(modelInfo.url.toString(),
                  localPart ?? templateId ?? name.namespace.localPart);
              break;
            }
          }
        }
      }

      return Retrieve(
        dataType: name.namespace,
        codes: codes,
        context: context,
        codeComparator: codeComparator ?? 'in',
        templateId: templateId,
        codeProperty: codeProperty,
      );
    } else {
      throw ArgumentError('Invalid Retrieve');
    }
  }

  /// retrieve
  @override
  Retrieve visitRetrieveExpression(RetrieveExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is RetrieveContext) {
        return visitRetrieve(child);
      }
    }
    throw ArgumentError('$thisNode Invalid RetrieveExpression');
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
  dynamic visitSetAggregateExpressionTerm(
      SetAggregateExpressionTermContext ctx) {
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
  dynamic visitSortByItem(SortByItemContext ctx) {
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

  /// sourceClause:
  /// 'from'? aliasedQuerySource (',' aliasedQuerySource)*;
  @override
  List<AliasedQuerySource> visitSourceClause(SourceClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    List<AliasedQuerySource> source = [];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AliasedQuerySourceContext) {
        source.add(visitAliasedQuerySource(child));
      }
    }
    return source;
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
  dynamic visitStartsIntervalOperatorPhrase(
      StartsIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// statement:
  // expressionDefinition
  // | contextDefinition
  // | functionDefinition;
  @override
  void visitStatement(StatementContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    ExpressionDef? statement;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionDefinitionContext) {
        statement = visitExpressionDefinition(child);
      }
      if (child is ContextDefinitionContext) {
        visitContextDefinition(child);
      } else if (child is FunctionDefinitionContext) {
        statement = visitFunctionDefinition(child);
      }
    }
    if (statement != null) {
      library.statements ??= ExpressionDefs();
      library.statements!.def.add(statement);
    }
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
  dynamic visitSuccessorExpressionTerm(SuccessorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitTemporalRelationship(TemporalRelationshipContext ctx) =>
      _noQuoteString(ctx.text);

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
  dynamic visitTermExpressionTerm(TermExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      return byContext(child);
    }
    throw ArgumentError('$thisNode Invalid TermExpressionTerm');
  }

  /// terminology: qualifiedIdentifierExpression | expression;
  @override
  Expression visitTerminology(TerminologyContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifiedIdentifierExpressionContext) {
        return visitQualifiedIdentifierExpression(child);
      } else {
        final result = byContext(child);
        if (result is Expression) {
          return result;
        }
      }
    }
    throw ArgumentError('$thisNode Invalid Terminology');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitThisInvocation(ThisInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// ('start' | 'end') 'of' expressionTerm	# timeBoundaryExpressionTerm
  @override
  dynamic visitTimeBoundaryExpressionTerm(
      TimeBoundaryExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 3) {
      final Expression expression = byContext(ctx.children![2]);
      if (ctx.children![0].text == 'start') {
        return Start(operand: expression);
      } else if (ctx.children![0].text == 'end') {
        return End(operand: expression);
      }
    }
    throw ArgumentError('$thisNode Invalid TimeBoundaryExpressionTerm');
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
  dynamic visitTimeUnitExpressionTerm(TimeUnitExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// expression intervalOperatorPhrase expression # timingExpression
  @override
  Expression visitTimingExpression(TimingExpressionContext ctx) {
    printIf(ctx, true);
    final int thisNode = getNextNode();
    if (ctx.childCount == 3) {
      Expression left =
          visitTermExpression(ctx.children![0] as TermExpressionContext);
      Expression right =
          visitTermExpression(ctx.children![2] as TermExpressionContext);
      Expression? result;
      final intervalOperatorPhrase = ctx.children![1];
      if (intervalOperatorPhrase
          is ConcurrentWithIntervalOperatorPhraseContext) {
        result =
            visitConcurrentWithIntervalOperatorPhrase(intervalOperatorPhrase);
      } else if (intervalOperatorPhrase
          is IncludesIntervalOperatorPhraseContext) {
        result = visitIncludesIntervalOperatorPhrase(intervalOperatorPhrase);
      } else if (intervalOperatorPhrase
          is IncludedInIntervalOperatorPhraseContext) {
        result = visitIncludedInIntervalOperatorPhrase(intervalOperatorPhrase);
      } else if (intervalOperatorPhrase
          is BeforeOrAfterIntervalOperatorPhraseContext) {
        return visitBeforeOrAfterIntervalOperatorPhrase(
            intervalOperatorPhrase, left, right);
      } else if (intervalOperatorPhrase
          is WithinIntervalOperatorPhraseContext) {
        result = visitWithinIntervalOperatorPhrase(intervalOperatorPhrase);
      } else if (intervalOperatorPhrase is MeetsIntervalOperatorPhraseContext) {
        result = visitMeetsIntervalOperatorPhrase(intervalOperatorPhrase);
      } else if (intervalOperatorPhrase
          is OverlapsIntervalOperatorPhraseContext) {
        result = visitOverlapsIntervalOperatorPhrase(intervalOperatorPhrase);
      } else if (intervalOperatorPhrase
          is StartsIntervalOperatorPhraseContext) {
        result = visitStartsIntervalOperatorPhrase(intervalOperatorPhrase);
      } else if (intervalOperatorPhrase is EndsIntervalOperatorPhraseContext) {
        result = visitEndsIntervalOperatorPhrase(intervalOperatorPhrase);
      }
      if (result is BinaryExpression) {
        result.operand.add(left);
        result.operand.add(right);
        return result;
      }
    }

    throw ArgumentError('$thisNode Invalid TimingExpression');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTotalInvocation(TotalInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// tupleElementDefinition: referentialIdentifier typeSpecifier;
  @override
  TupleTypeSpecifierElement visitTupleElementDefinition(
      TupleElementDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    Ref? name;
    TypeSpecifier? typeSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }
    if (name?.name != null && typeSpecifier != null) {
      return TupleTypeSpecifierElement(
          elementType: typeSpecifier, name: name!.name);
    } else {
      throw ArgumentError('$thisNode Invalid TupleElementDefinition');
    }
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
  dynamic visitTupleSelector(TupleSelectorContext ctx) {
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
  dynamic visitTypeExtentExpressionTerm(TypeExtentExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// Reserved words that are also type names
  /// typeNameIdentifier: 'Code' | 'Concept' | 'date' | 'time';
  @override
  dynamic visitTypeNameIdentifier(TypeNameIdentifierContext ctx) =>
      _noQuoteString(ctx.text);

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

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitUnit(UnitContext ctx) => _noQuoteString(ctx.text);

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
      final modelInfoProvider = StandardModelInfoProvider();
      final modelInfo = modelInfoProvider
          .load(ModelIdentifier(id: localIdentifier!, version: version));
      library.usings!.def.add(UsingDef(
        localIdentifier: localIdentifier,
        version: version,
        uri: modelInfo?.url.toString(),
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

    List<CodeSystemRef>? codeSystem;
    AccessModifier accessModifier = AccessModifier.public;
    String? name;
    String? id;
    String? version;

    final int thisNode = getNextNode();
    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessModifier = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is ValuesetIdContext) {
        id = visitValuesetId(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      } else if (child is CodesystemsContext) {
        codeSystem = visitCodesystems(child);
      }
    }

    if (name != null || id != null) {
      library.valueSets!.def.add(ValueSetDef(
        codeSystem: codeSystem,
        accessLevel: accessModifier,
        id: id,
        name: name,
        version: version,
      ));
    }
  }

  /// valuesetId: STRING;
  @override
  String visitValuesetId(ValuesetIdContext ctx) => _noQuoteString(ctx.text);

  /// versionSpecifier: STRING;
  @override
  String visitVersionSpecifier(VersionSpecifierContext ctx) =>
      _noQuoteString(ctx.text);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Expression visitWhereClause(WhereClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        return byContext(child);
      }
    }
    throw ArgumentError('$thisNode Invalid WhereClause');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWidthExpressionTerm(WidthExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// withClause: 'with' aliasedQuerySource 'such that' expression;
  @override
  With visitWithClause(WithClauseContext ctx) {
    printIf(ctx, true);
    final int thisNode = getNextNode();
    if (ctx.getChild(1) is AliasedQuerySourceContext) {
      final RelationshipClause source =
          visitAliasedQuerySource(ctx.getChild(1) as AliasedQuerySourceContext);
      final suchThat =
          ctx.getChild(3) == null ? null : byContext(ctx.getChild(3)!);
      print('suchThat: $suchThat');
      return With(
          alias: source.alias,
          expression: source.expression,
          suchThat: suchThat is Expression ? suchThat : null);
    }
    throw ArgumentError('$thisNode Invalid WithClause');
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
  Without visitWithoutClause(WithoutClauseContext ctx) {
    printIf(ctx, true);
    final int thisNode = getNextNode();
    if (ctx.getChild(1) is AliasedQuerySourceContext) {
      final RelationshipClause source =
          visitAliasedQuerySource(ctx.getChild(1) as AliasedQuerySourceContext);
      final suchThat =
          ctx.getChild(3) == null ? null : byContext(ctx.getChild(3)!);
      return Without(
          alias: source.alias,
          expression: source.expression,
          suchThat: suchThat is Expression ? suchThat : null);
    }
    throw ArgumentError('$thisNode Invalid WithoutClause');
  }

  int getNextNode() {
    final tempNumber = nodeNumber.toInt();
    nodeNumber++;
    return tempNumber;
  }

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

  Ref _returnRef(String name, String? libraryName) {
    /// usings?
    /// includes?
    /// contexts?
    int? codeSystemIndex;
    int? valueSetIndex;
    int? codeIndex;
    int? conceptIndex;
    int? parameterIndex;
    int? expressionIndex;

    codeSystemIndex =
        library.codeSystems?.def.indexWhere((element) => element.name == name);
    if (codeSystemIndex != null && codeSystemIndex != -1) {
      return CodeSystemRef(name: name, libraryName: libraryName);
    } else {
      valueSetIndex =
          library.valueSets?.def.indexWhere((element) => element.name == name);
      if (valueSetIndex != null && valueSetIndex != -1) {
        return ValueSetRef(name: name, libraryName: libraryName);
      } else {
        codeIndex =
            library.codes?.def.indexWhere((element) => element.name == name);
        if (codeIndex != null && codeIndex != -1) {
          return CodeRef(name: name, libraryName: libraryName);
        } else {
          conceptIndex = library.concepts?.def
              .indexWhere((element) => element.name == name);
          if (conceptIndex != null && conceptIndex != -1) {
            return ConceptRef(name: name, libraryName: libraryName);
          } else {
            parameterIndex = library.parameters?.def
                .indexWhere((element) => element.name == name);
            if (parameterIndex != null && parameterIndex != -1) {
              return ParameterRef(name: name, libraryName: libraryName);
            } else {
              expressionIndex = library.statements?.def
                  .indexWhere((element) => element.name == name);
              if (expressionIndex != null && expressionIndex != -1) {
                return ExpressionRef(name: name, libraryName: libraryName);
              } else {
                return IdentifierRef(name: name, libraryName: libraryName);
              }
            }
          }
        }
      }
    }
  }
}
