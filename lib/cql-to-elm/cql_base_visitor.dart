// Generated from cql.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'dart:developer';

import 'package:antlr4/antlr4.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:ucum/ucum.dart';

import '../../cql.dart';

/// This class provides an empty implementation of [CqlVisitor],
/// which can be extended to create a visitor which only needs to handle
/// a subset of the available methods.
///
/// [T] is the print(ctx.runtimeType); return type of the visit operation. Use
/// `void` for operations with no print(ctx.runtimeType); return type.
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

  /// expressionTerm ('+' | '-' | '&') expressionTerm	# additionExpressionTerm
  @override
  CqlExpression visitAdditionExpressionTerm(AdditionExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final List<CqlExpression> operand = <CqlExpression>[];
    String? additionOperator;
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('additionExpression: ${child.runtimeType} ${child.text}');
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      } else {
        additionOperator = child.text;
      }
    }
    if (operand.length == 2) {
      if (additionOperator == '-') {
        if (operand.first is LiteralType && operand.last is LiteralNull) {
          return Subtract(operand: [
            operand.first,
            As(
                operand: operand.last,
                asType:
                    QName.fromFull((operand.first as LiteralType).valueType))
          ]);
        } else if (operand.first is LiteralNull &&
            operand.last is LiteralType) {
          return Subtract(operand: [
            As(
                operand: operand.first,
                asType:
                    QName.fromFull((operand.first as LiteralType).valueType)),
            operand.last
          ]);
        } else {
          return Subtract(operand: operand);
        }
      } else if (operand[0] is LiteralString && operand[1] is LiteralString) {
        return Concatenate(operand: operand, plus: additionOperator == '+');
      } else if (operand[0] is LiteralString && operand[1] is LiteralNull) {
        return Concatenate(operand: [
          operand[0],
          As(operand: operand[1], asType: QName.fromFull('String'))
        ], plus: additionOperator == '+');
      } else if (operand[0] is LiteralNull && operand[1] is LiteralString) {
        return Concatenate(operand: [
          As(operand: operand[0], asType: QName.fromFull('String')),
          operand[1]
        ], plus: additionOperator == '+');
      } else {
        final left = operand.first;
        final right = operand.last;
        final return1 = left.getReturnTypes(library);
        final return2 = right.getReturnTypes(library);
        Type? returnType1;
        Type? returnType2;
        if ((return1?.isNotEmpty ?? false) && return1?.length == 1) {
          returnType1 = return1?.first;
        }
        if ((return2?.isNotEmpty ?? false) && return2?.length == 1) {
          returnType2 = return2?.first;
        }
        // print('$left $right');
        // print('returnType1: $returnType1 returnType2: $returnType2');
        if (returnType1 == String && returnType2 == String) {
          return Concatenate(operand: operand, plus: additionOperator == '+');
        } else if (returnType1 == String && returnType2 == Null) {
          return Concatenate(operand: [
            operand[0],
            As(operand: operand[1], asType: QName.fromFull('String'))
          ], plus: additionOperator == '+');
        } else if (returnType1 == Null && returnType2 == String) {
          return Concatenate(operand: [
            As(operand: operand[0], asType: QName.fromFull('String')),
            operand[1]
          ], plus: additionOperator == '+');
        }
        switch (left) {
          case LiteralInteger _:
            return right is LiteralInteger
                ? Add(operand: operand)
                : right is LiteralLong
                    ? Add(operand: [ToLong(operand: left), right])
                    : right is LiteralDecimal
                        ? Add(operand: [ToDecimal(operand: left), right])
                        : right is LiteralNull
                            ? Add(operand: [
                                left,
                                As(
                                    operand: right,
                                    asType: QName.fromFull(left.valueType))
                              ])
                            : Add(operand: operand);
          case LiteralLong _:
            return right is LiteralInteger
                ? Add(operand: [left, ToLong(operand: right)])
                : right is LiteralLong
                    ? Add(operand: operand)
                    : right is LiteralDecimal
                        ? Add(operand: [ToDecimal(operand: left), right])
                        : right is LiteralNull
                            ? Add(operand: [
                                left,
                                As(
                                    operand: right,
                                    asType: QName.fromFull(left.valueType))
                              ])
                            : Add(operand: operand);
          case LiteralDecimal _:
            return right is LiteralInteger
                ? Add(operand: [left, ToDecimal(operand: right)])
                : right is LiteralLong
                    ? Add(operand: [left, ToDecimal(operand: right)])
                    : right is LiteralNull
                        ? Add(operand: [
                            left,
                            As(
                                operand: right,
                                asType: QName.fromFull(left.valueType))
                          ])
                        : Add(operand: operand);
          case LiteralQuantity _:
            return right is LiteralDecimal
                ? Add(operand: [left, ToQuantity(operand: right)])
                : right is LiteralNull
                    ? Add(operand: [
                        left,
                        As(
                            operand: right,
                            asType: QName.fromFull(left.valueType))
                      ])
                    : Add(operand: operand);
          default:
            {
              final return1 = operand.first.getReturnTypes(library);
              final return2 = operand.last.getReturnTypes(library);

              return Add(operand: operand);
            }
        }
      }
    }
    throw ArgumentError('$thisNode Invalid AdditionExpressionTerm');
  }

  /// aggregateClause:
  ///	'aggregate' ('all' | 'distinct')? identifier startingClause? ':' expression;
  @override
  AggregateClause visitAggregateClause(AggregateClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool distinct = false;
    String? identifier;
    CqlExpression? startingClause;
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        identifier = visitIdentifier(child);
      } else if (child is StartingClauseContext) {
        startingClause = visitStartingClause(child);
      } else if (child is ExpressionContext) {
        expression = byContext(child);
      } else if (child is TerminalNodeImpl) {
        if (child.text == 'distinct') {
          distinct = true;
        }
      }
    }
    if (identifier != null && expression != null) {
      return AggregateClause(
        identifier: identifier,
        expression: expression,
        distinct: distinct,
        starting: startingClause,
      );
    }
    throw ArgumentError('$thisNode Invalid AggregateClause');
  }

  /// ('distinct' | 'flatten') expression	# aggregateExpressionTerm
  @override
  CqlExpression visitAggregateExpressionTerm(
      AggregateExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool distinct = false;
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        distinct = child.text == 'distinct' ? true : false;
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          expression = result;
        }
      }
    }
    if (expression != null) {
      return distinct
          ? Distinct(operand: expression)
          : Flatten(operand: expression);
    }
    throw ArgumentError('$thisNode Invalid AggregateExpressionTerm');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitAlias(AliasContext ctx) => _noQuoteString(ctx.text);

  /// aliasedQuerySource: querySource alias;
  @override
  RelationshipClause visitAliasedQuerySource(AliasedQuerySourceContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? querySource;
    String? alias;
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('aliasedQuerySource: ${child.runtimeType} ${child.text}');
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
    List<CqlExpression> operand = [];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (operand.length == 2) {
      if (operand.first is LiteralType && operand.last is LiteralType) {
        if (operand.first is! LiteralNull && operand.last is LiteralNull) {
          return And(operand: [
            operand.first,
            As(
                operand: operand.last,
                asType:
                    QName.fromFull((operand.first as LiteralType).valueType))
          ]);
        } else if (operand.first is LiteralNull &&
            operand.last is LiteralNull) {
          return And(operand: [
            As(
                operand: operand.first,
                asType:
                    QName.fromFull((operand.last as LiteralType).valueType)),
            operand.last,
          ]);
        }
      }
      return And(operand: operand);
    }
    throw '$thisNode Invalid number of arguments for And operator';
  }

  /// ('starts' | 'ends' | 'occurs')? quantityOffset? temporalRelationship
  ///	dateTimePrecisionSpecifier? ('start' | 'end')?
  @override
  CqlExpression visitBeforeOrAfterIntervalOperatorPhrase(
      BeforeOrAfterIntervalOperatorPhraseContext ctx,
      [CqlExpression? left,
      CqlExpression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? startsEndsOccurs;
    CqlExpression? quantityOffset;
    String? temporalRelationship;
    CqlDateTimePrecision? dateTimePrecision;
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
        dateTimePrecision = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    if (startsEndsOccurs != null) {
      final start = startEnd == 'start';
      final end = startEnd == 'end';
      final same = startsEndsOccurs.contains('same');
      if (start) {
        if (same) {
          return SameAs(
            precision: dateTimePrecision,
            operand: [],
          );
        } else {
          return Starts(
            precision: dateTimePrecision,
            operand: [],
          );
        }
      } else if (end) {
        if (same) {
          return SameAs(
            precision: dateTimePrecision,
            operand: [],
          );
        } else {
          return Ends(
            precision: dateTimePrecision,
            operand: [],
          );
        }
      }
    }
    if (temporalRelationship != null) {
      if (left != null && right != null) {
        if (temporalRelationship == 'before') {
          return Before(operand: [left, right], precision: dateTimePrecision);
        } else if (temporalRelationship == 'after') {
          return After(operand: [left, right], precision: dateTimePrecision);
        }
      }
    }
    throw ArgumentError(
        '$thisNode Invalid BeforeOrAfterIntervalOperatorPhrase');
  }

  /// expression 'properly'? 'between' expressionTerm 'and' expressionTerm
  @override
  And visitBetweenExpression(BetweenExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? operand;
    CqlExpression? left;
    CqlExpression? right;
    bool properly = false;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'properly') {
          properly = true;
        }
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          if (operand == null) {
            operand = result;
          } else if (left == null) {
            left = result;
          } else {
            right ??= result;
          }
        }
      }
    }
    if (operand != null && left != null && right != null) {
      // TODO(Dokotela): what to do with properly
      return And(operand: [
        GreaterOrEqual(operand: [operand, left]),
        LessOrEqual(operand: [operand, right]),
      ]);
    }
    throw ArgumentError('$thisNode Invalid BetweenExpression');
  }

  /// expression 'is' 'not'? ('null' | 'true' | 'false')
  @override
  dynamic visitBooleanExpression(BooleanExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool not = false;
    bool null_ = false;
    bool true_ = false;
    bool false_ = false;
    CqlExpression? operand;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'not') {
          not = true;
        } else if (child.text == 'null') {
          null_ = true;
        } else if (child.text == 'true') {
          true_ = true;
        } else if (child.text == 'false') {
          false_ = true;
        }
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand = result;
        }
      }
    }
    if (operand != null) {
      if (null_) {
        return not
            ? Not(operand: IsNull(operand: operand))
            : IsNull(operand: operand);
      } else if (true_) {
        return not
            ? Not(operand: IsTrue(operand: operand))
            : IsTrue(operand: operand);
      } else if (false_) {
        return not
            ? Not(operand: IsFalse(operand: operand))
            : IsFalse(operand: operand);
      }
    }

    throw ArgumentError('$thisNode Invalid BooleanExpression');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  LiteralBoolean visitBooleanLiteral(BooleanLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return LiteralBoolean(value: ctx.text == 'true');
  }

  /// caseExpressionItem: 'when' expression 'then' expression;
  @override
  CaseItem visitCaseExpressionItem(CaseExpressionItemContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? when_;
    CqlExpression? then;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionContext) {
        if (when_ == null) {
          when_ = byContext(child);
        } else {
          then = byContext(child);
        }
      }
    }
    if (when_ != null && then != null) {
      return CaseItem(when_: when_, then: then);
    }
    throw ArgumentError('$thisNode Invalid CaseExpressionItem');
  }

  /// 'case' expression? caseExpressionItem+ 'else' expression 'end'	# caseExpressionTerm
  @override
  Case visitCaseExpressionTerm(CaseExpressionTermContext ctx) {
    printIf(ctx, true);
    final int thisNode = getNextNode();
    bool orElse = false;
    CqlExpression? comparand;
    List<CaseItem> caseItem = [];
    CqlExpression? elseExpr;
    int i = 2;
    for (final child in ctx.children ?? <ParseTree>[]) {}
    if (ctx.getChild(1) is ExpressionContext) {
      comparand = byContext(ctx.getChild(1)!);
    } else {
      i = 1;
    }
    for (i; i < ctx.childCount - 1; i++) {
      if (ctx.getChild(i) is CaseExpressionItemContext) {
        caseItem.add(visitCaseExpressionItem(
            ctx.getChild(i) as CaseExpressionItemContext));
      } else if (ctx.getChild(i) is ExpressionContext) {
        elseExpr = byContext(ctx.getChild(i) as ExpressionContext);
      }
    }
    if (caseItem.isNotEmpty && elseExpr != null) {
      return Case(comparand: comparand, caseItem: caseItem, elseExpr: elseExpr);
    } else {
      throw ArgumentError('$thisNode Invalid CaseExpressionTerm');
    }
  }

  /// | 'cast' expression 'as' typeSpecifier # castExpression
  @override
  As visitCastExpression(CastExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? operand;
    TypeSpecifierExpression? typeSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionContext) {
        operand = byContext(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }

    if (operand != null && typeSpecifier != null) {
      return As(operand: operand, resultTypeSpecifier: typeSpecifier);
    }

    throw ArgumentError('$thisNode Invalid CastExpression');
  }

  /// choiceTypeSpecifier:
  /// 'Choice' '<' typeSpecifier (',' typeSpecifier)* '>';
  @override
  ChoiceTypeSpecifier visitChoiceTypeSpecifier(ChoiceTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    List<TypeSpecifierExpression> choice = <TypeSpecifierExpression>[];
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

  /// codeComparator: 'in' | '=' | '~';
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

  /// codePath: simplePath;
  /// 	referentialIdentifier					# simplePathReferentialIdentifier
  /// | simplePath '.' referentialIdentifier	# simplePathQualifiedIdentifier
  /// | simplePath '[' simpleLiteral ']'		# simplePathIndexer;
  @override
  dynamic visitCodePath(CodePathContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('codePath: ${child.runtimeType} ${child.text}');
      if (child is SimplePathReferentialIdentifierContext) {
        return visitSimplePathReferentialIdentifier(child);
      } else if (child is SimplePathQualifiedIdentifierContext) {
        return visitSimplePathQualifiedIdentifier(child);
      } else if (child is SimplePathIndexerContext) {
        return visitSimplePathIndexer(child);
      }
    }
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

  /// codeSelector			# codeSelectorTerm
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
  List<CodeSystemRef> visitCodesystems(CodesystemsContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final List<CodeSystemRef> codeSystem = <CodeSystemRef>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is CodesystemIdentifierContext) {
        codeSystem.add(visitCodesystemIdentifier(child));
      }
    }
    return codeSystem;
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

  /// conceptSelector:
  /// 'Concept' '{' codeSelector (',' codeSelector)* '}' displayClause?;
  @override
  Concept visitConceptSelector(ConceptSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? display;
    List<Code> code = [];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is CodeSelectorContext) {
        code.add(visitCodeSelector(child));
      } else if (child is DisplayClauseContext) {
        display = visitDisplayClause(child);
      }
    }
    if (code.isNotEmpty) {
      return Concept(code: code, display: display);
    }
    throw ArgumentError('$thisNode Invalid ConceptSelector');
  }

  /// 	| conceptSelector		# conceptSelectorTerm
  @override
  Concept visitConceptSelectorTerm(ConceptSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ConceptSelectorContext) {
        return visitConceptSelector(child);
      }
    }
    throw ArgumentError('$thisNode Invalid ConceptSelectorTerm');
  }

  /// ('starts' | 'ends' | 'occurs')? 'same' dateTimePrecision? (
  /// relativeQualifier
  /// | 'as'
  /// ) ('start' | 'end')?
  @override
  CqlExpression visitConcurrentWithIntervalOperatorPhrase(
      ConcurrentWithIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? startsEndsOccurs;
    CqlDateTimePrecision? dateTimePrecision;
    String? relativeQualifier;
    bool as_ = false;
    String? startEnd;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'starts' ||
            child.text == 'ends' ||
            child.text == 'occurs') {
          startsEndsOccurs = child.text;
        } else if (child.text == 'start' || child.text == 'end') {
          startEnd = child.text;
        } else if (child.text == 'as') {
          as_ = true;
        }
      } else if (child is RelativeQualifierContext) {
        relativeQualifier = visitRelativeQualifier(child);
      } else if (child is DateTimePrecisionContext) {
        dateTimePrecision = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecision(child));
      }
    }
    // print('startsEndsOccurs: $startsEndsOccurs');
    // print('dateTimePrecision: $dateTimePrecision');
    // print('relativeQualifier: $relativeQualifier');
    // print('as_: $as_');
    // print('startEnd: $startEnd');
    if (as_) {
      return SameAs(operand: [], precision: dateTimePrecision);
    } else if (relativeQualifier == 'or after') {
      return SameOrAfter(operand: [], precision: dateTimePrecision);
    } else if (relativeQualifier == 'or before') {
      return SameOrBefore(operand: [], precision: dateTimePrecision);
    }

    throw ArgumentError(
        '$thisNode Invalid ConcurrentWithIntervalOperatorPhrase');
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
  LiteralDate visitDateLiteral(DateLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return LiteralDate(value: ctx.text.replaceFirst('@', ''));
  }

  /// dateTimeComponent:
  ///	dateTimePrecision
  ///	| 'date'
  ///	| 'time'
  ///	| 'timezoneoffset';
  @override
  String visitDateTimeComponent(DateTimeComponentContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        return child.text ?? '';
      } else if (child is DateTimePrecisionContext) {
        return visitDateTimePrecision(child);
      }
    }
    throw ArgumentError('$thisNode Invalid DateTimeComponent');
  }

  /// DATETIME				# dateTimeLiteral
  @override
  LiteralDateTime visitDateTimeLiteral(DateTimeLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return LiteralDateTime(value: ctx.text.replaceFirst('@', ''));
  }

  /// dateTimePrecision:
  ///	'year'
  ///	| 'month'
  ///	| 'week'
  ///	| 'day'
  ///	| 'hour'
  ///	| 'minute'
  ///	| 'second'
  ///	| 'millisecond';
  @override
  String visitDateTimePrecision(DateTimePrecisionContext ctx) =>
      _noQuoteString(ctx.text);

  /// dateTimePrecision 'of';
  @override
  String visitDateTimePrecisionSpecifier(
      DateTimePrecisionSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return visitDateTimePrecision(ctx.getChild(0) as DateTimePrecisionContext);
  }

  /// This can be usingDefinition, includeDefinition, codesystemDefinition,
  /// valuesetDefinition, codeDefinition, conceptDefinition, parameterDefinition.
  @override
  void visitDefinition(DefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// 'difference' 'in' pluralDateTimePrecision 'between' expressionTerm 'and'
  /// expressionTerm
  @override
  DifferenceBetween visitDifferenceBetweenExpression(
      DifferenceBetweenExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlDateTimePrecision? pluralDateTimePrecision;
    CqlExpression? left;
    CqlExpression? right;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is PluralDateTimePrecisionContext) {
        pluralDateTimePrecision = CqlDateTimePrecisionExtension.fromJson(
            visitPluralDateTimePrecision(child));
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          if (left == null) {
            left = result;
          } else {
            right = result;
          }
        }
      }
    }
    if (pluralDateTimePrecision != null && left != null && right != null) {
      return DifferenceBetween(
          precision: pluralDateTimePrecision, operand: [left, right]);
    }
    throw ArgumentError('$thisNode Invalid DifferenceBetweenExpression');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDifferenceExpressionTerm(DifferenceExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// displayClause: 'display' STRING;
  @override
  String visitDisplayClause(DisplayClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl && child.text != 'display') {
        return _noQuoteString(ctx.children![1].text!);
      }
    }
    throw ArgumentError('$thisNode Invalid DisplayClause');
  }

  /// ('duration' 'in')? pluralDateTimePrecision 'between' expressionTerm 'and'
  /// expressionTerm
  @override
  DurationBetween visitDurationBetweenExpression(
      DurationBetweenExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool durationIn = false;
    CqlDateTimePrecision? pluralDateTimePrecision;
    CqlExpression? left;
    CqlExpression? right;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'duration') {
          durationIn = true;
        }
      } else if (child is PluralDateTimePrecisionContext) {
        pluralDateTimePrecision = CqlDateTimePrecisionExtension.fromJson(
            visitPluralDateTimePrecision(child));
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          if (left == null) {
            left = result;
          } else {
            right = result;
          }
        }
      }
    }
    if (pluralDateTimePrecision != null && left != null && right != null) {
      return DurationBetween(
          precision: pluralDateTimePrecision, operand: [left, right]);
    }
    throw ArgumentError('$thisNode Invalid DurationBetweenExpression');
  }

  /// 'duration' 'in' pluralDateTimePrecision 'of' expressionTerm
  @override
  dynamic visitDurationExpressionTerm(DurationExpressionTermContext ctx) {
    printIf(ctx, true);
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

  /// 'ends' dateTimePrecisionSpecifier?
  @override
  Ends visitEndsIntervalOperatorPhrase(EndsIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlDateTimePrecision? dateTimePrecision;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecision = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    return Ends(precision: dateTimePrecision, operand: []);
  }

  List<CqlExpression> translateOperand(List<CqlExpression> operand) {
    if (operand.first is LiteralType &&
        operand.first is! LiteralNull &&
        operand.last is LiteralNull) {
      return [
        operand.first,
        As(
            operand: operand.last,
            asType: QName.fromFull((operand.first as LiteralType).valueType))
      ];
    } else if (operand.first is LiteralNull &&
        operand.last is LiteralType &&
        operand.last is! LiteralNull) {
      return [
        As(
            operand: operand.first,
            asType: QName.fromFull((operand.first as LiteralType).valueType)),
        operand.last
      ];
    } else {
      List<Type>? firstReturnTypes = operand.first.getReturnTypes(library);
      List<Type>? lastReturnTypes = operand.last.getReturnTypes(library);
      Type? firstType;
      Type? lastType;
      if (firstReturnTypes != null && firstReturnTypes.isNotEmpty) {
        firstType = firstReturnTypes.first;
      }
      if (lastReturnTypes != null && lastReturnTypes.isNotEmpty) {
        lastType = lastReturnTypes.first;
      }
      if (firstType != null && lastType != null) {
        firstType = LiteralType.typeToLiteral(firstType);
        lastType = LiteralType.typeToLiteral(lastType);
        if (firstType == LiteralInteger) {
          if (lastType == LiteralLong) {
            return [ToLong(operand: operand.first), operand.last];
          } else if (lastType == LiteralDecimal) {
            return [ToDecimal(operand: operand.first), operand.last];
          }
        } else if (firstType == LiteralLong) {
          if (lastType == LiteralInteger) {
            return [operand.first, ToLong(operand: operand.last)];
          } else if (lastType == LiteralDecimal) {
            return [ToDecimal(operand: operand.first), operand.last];
          }
        } else if (firstType == LiteralDecimal) {
          if (lastType == LiteralInteger) {
            return [operand.first, ToDecimal(operand: operand.last)];
          } else if (lastType == LiteralLong) {
            return [operand.first, ToDecimal(operand: operand.last)];
          } else if (lastType == LiteralQuantity) {
            return [operand.first, ToQuantity(operand: operand.last)];
          }
        } else if (firstType == LiteralQuantity) {
          if (lastType == LiteralDecimal) {
            return [operand.first, ToQuantity(operand: operand.last)];
          }
        }
      }
    }
    return operand;
  }

  /// expression ('=' | '!=' | '~' | '!~') expression
  @override
  CqlExpression visitEqualityExpression(EqualityExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? equalityOperator;
    List<CqlExpression> operand = [];
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('EqualityExpression: ${child.runtimeType} ${child.text}');
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        } else if (result is String) {
          operand.add(ExpressionRef(name: result));
        } else {
          print('$thisNode resulttype: ${child.runtimeType} ${child.text} '
              '${result.runtimeType} $result');
        }
      } else {
        equalityOperator = child.text;
      }
    }
    if (operand.length == 2) {
      if (equalityOperator == '=') {
        return Equal(operand: translateOperand(operand));
      } else if (equalityOperator == '!=') {
        return Not(operand: Equal(operand: translateOperand(operand)));
      } else if (equalityOperator == '~') {
        return Equivalent(operand: translateOperand(operand));
      } else if (equalityOperator == '!~') {
        return Not(operand: Equivalent(operand: translateOperand(operand)));
      }
    }
    throw ArgumentError('$thisNode Invalid EqualityExpression');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitExclusiveRelativeQualifier(
          ExclusiveRelativeQualifierContext ctx) =>
      _noQuoteString(ctx.text);

  /// 'exists' expression
  @override
  Exists visitExistenceExpression(ExistenceExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          return Exists(operand: result);
        }
      }
    }
    throw ArgumentError('$thisNode Invalid ExistenceExpression');
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
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('ExpressionDefinition: ${child.runtimeType} ${child.text}');
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          expression = result;
        }
      }
    }
    if (name != null) {
      return ExpressionDef(
        name: name,
        context: library.contexts != null && library.contexts!.def.isNotEmpty
            ? library.contexts!.def.first.name
            : 'Unfiltered',
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

  /// function: referentialIdentifier '(' paramList? ')';
  @override
  dynamic visitFunction(FunctionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? ref;
    List<CqlExpression> operand = [];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        ref = visitReferentialIdentifier(child);
      } else if (child is ParamListContext) {
        operand.addAll(visitParamList(child));
      }
    }
    if (ref != null) {
      return CqlExpression.byName(ref, operand, library);
    }
    throw ArgumentError('$thisNode Invalid Function');
  }

  /// functionBody: expression;
  @override
  CqlExpression visitFunctionBody(FunctionBodyContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionContext) {
        return byContext(child);
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
  @override
  FunctionDef visitFunctionDefinition(FunctionDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    AccessModifier accessLevel = AccessModifier.public;
    String? name;
    bool fluent = false;
    List<OperandDef>? operand;
    TypeSpecifierExpression? returnType;
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is TerminalNodeImpl && child.text == 'fluent') {
        fluent = true;
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
      // TODO(Dokotela): This feels hacky
      if (expression is Ref) {
        final index = operand
            ?.indexWhere((element) => element.name == (expression as Ref).name);
        if (index != null && index != -1) {
          expression = OperandRef.fromRef(expression);
        }
      }
      return FunctionDef(
        name: name,
        operand: operand,
        resultTypeSpecifier: returnType,
        context: library.contexts != null && library.contexts!.def.isNotEmpty
            ? library.contexts!.def.first.name
            : 'Unfiltered',
        expression: expression,
        accessLevel: accessLevel,
      );
    }

    throw ArgumentError('$thisNode Invalid FunctionDefinition');
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
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          return result;
        }
      }
    }
    throw ArgumentError('$thisNode Invalid FunctionInvocation');
  }

  /// identifier: IDENTIFIER | DELIMITEDIDENTIFIER | QUOTEDIDENTIFIER;
  @override
  String visitIdentifier(IdentifierContext ctx) => _noQuoteString(ctx.text);

  /// identifierOrFunctionIdentifier: identifier | functionIdentifier;
  @override
  String visitIdentifierOrFunctionIdentifier(
          IdentifierOrFunctionIdentifierContext ctx) =>
      _noQuoteString(ctx.text);

  /// 'if' expression 'then' expression 'else' expression
  @override
  dynamic visitIfThenElseExpressionTerm(IfThenElseExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? condition;
    CqlExpression? then;
    CqlExpression? elseExpr;
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result is CqlExpression) {
        if (condition == null) {
          condition = result;
        } else if (then == null) {
          then = result;
        } else {
          elseExpr = result;
        }
      }
    }
    if (condition != null && then != null && elseExpr != null) {
      return IfThenElse(condition: condition, then: then, elseExpr: elseExpr);
    }
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitImpliesExpression(ImpliesExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result is CqlExpression) {
        operand.add(result);
      }
    }
    if (operand.length == 2) {
      return Implies(operand: operand);
    }
    throw ArgumentError('$thisNode Invalid ImpliesExpression');
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
          left is CqlExpression &&
          right != null &&
          right is CqlExpression &&
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
    String? properly;
    String? duringIncludedIn;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'starts' ||
            child.text == 'ends' ||
            child.text == 'occurs') {
          startsEndsOccurs = child.text;
        } else if (child.text == 'properly') {
          properly = child.text;
        } else if (child.text == 'during' || child.text == 'included in') {
          duringIncludedIn = child.text;
        }
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    if (duringIncludedIn != null) {
      return IncludedIn(
        precision: dateTimePrecisionSpecifier,
        operand: [],
      );
    }
    throw ArgumentError('$thisNode Invalid IncludedInIntervalOperatorPhrase');
  }

  /// 'properly'? 'includes' dateTimePrecisionSpecifier? (
  ///	'start'
  ///	| 'end'
  /// )?
  @override
  CqlExpression visitIncludesIntervalOperatorPhrase(
      IncludesIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? properly;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    String? startEnd;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'properly') {
          properly = child.text;
        } else if (child.text == 'start' || child.text == 'end') {
          startEnd = child.text;
        }
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    if (startEnd != null) {
      final start = startEnd == 'start';
      final end = startEnd == 'end';
      if (start) {
        return Starts(
          precision: dateTimePrecisionSpecifier,
          operand: [],
        );
      } else if (end) {
        return Ends(
          precision: dateTimePrecisionSpecifier,
          operand: [],
        );
      }
    }
    throw ArgumentError('$thisNode Invalid IncludesIntervalOperatorPhrase');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIndexInvocation(IndexInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// expressionTerm '[' expression ']'	# indexedExpressionTerm
  @override
  dynamic visitIndexedExpressionTerm(IndexedExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? expression;
    CqlExpression? index;
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result is CqlExpression) {
        if (expression == null) {
          expression = result;
        } else {
          index = result;
        }
      }
    }
    if (expression != null && index != null) {
      return Indexer(operand: [expression, index]);
    }
    throw ArgumentError('$thisNode Invalid IndexedExpressionTerm');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInequalityExpression(InequalityExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? inequality;
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == '!=' ||
            child.text == '<>' ||
            child.text == '<' ||
            child.text == '>' ||
            child.text == '<=' ||
            child.text == '>=') {
          inequality = child.text;
        }
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (inequality != null && operand.length == 2) {
      if (inequality == '!=') {
        return NotEqual(operand: operand);
      } else if (inequality == '<>') {
        return NotEqual(operand: operand);
      } else if (inequality == '<') {
        return Less(operand: operand);
      } else if (inequality == '>') {
        return Greater(operand: operand);
      } else if (inequality == '<=') {
        return LessOrEqual(operand: operand);
      } else if (inequality == '>=') {
        return GreaterOrEqual(operand: operand);
      }
    }
    throw ArgumentError('$thisNode Invalid InequalityExpression');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInstanceElementSelector(InstanceElementSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    CqlExpression? value;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          value = result;
        }
      }
    }

    if (name != null && value != null) {
      return InstanceElement(name: name, value: value);
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
      return Property(source: expressionTerm, path: qualifiedInvocation!.name);
    }
    throw ArgumentError('$thisNode Invalid InvocationExpressionTerm');
  }

  /// 	referentialIdentifier	# memberInvocation
  /// | function				# functionInvocation
  /// | '$this'				# thisInvocation
  /// | '$index'				# indexInvocation
  /// | '$total'				# totalInvocation;
  @override
  dynamic visitInvocationTerm(InvocationTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('$thisNode invocation: ${child.runtimeType} ${child.text}');
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

  /// listSelector: ('List' ('<' typeSpecifier '>')?)? '{' (
  ///	expression (',' expression)*
  /// )? '}';
  @override
  ListExpression visitListSelector(ListSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    TypeSpecifierExpression? typeSpecifier;
    final List<CqlExpression> element = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      } else if (child is ExpressionContext) {
        final result = byContext(child);
        if (result is CqlExpression) {
          element.add(result);
        }
      }
    }

    return ListExpression(
      typeSpecifier: typeSpecifier,
      element: element,
    );
  }

  /// listSelector			# listSelectorTerm
  @override
  ListExpression visitListSelectorTerm(ListSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ListSelectorContext) {
        return visitListSelector(child);
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
        return ListTypeSpecifier(elementType: visitTypeSpecifier(child));
      }
    }
    throw ArgumentError('$thisNode Invalid ListTypeSpecifier');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  LiteralType visitLiteralTerm(LiteralTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    LiteralType? type;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is BooleanLiteralContext) {
        return visitBooleanLiteral(child);
      } else if (child is NullLiteralContext) {
        return LiteralNull();
      } else if (child is StringLiteralContext) {
        return visitStringLiteral(child);
      } else if (child is NumberLiteralContext) {
        return visitNumberLiteral(child);
      } else if (child is LongNumberLiteralContext) {
        return visitLongNumberLiteral(child);
      } else if (child is DateTimeLiteralContext) {
        return visitDateTimeLiteral(child);
      } else if (child is DateLiteralContext) {
        return visitDateLiteral(child);
      } else if (child is TimeLiteralContext) {
        return visitTimeLiteral(child);
      } else if (child is QuantityLiteralContext) {
        return visitQuantityLiteral(child);
      } else if (child is RatioLiteralContext) {}
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
  LiteralLong visitLongNumberLiteral(LongNumberLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return LiteralLong(value: BigInt.parse(ctx.text));
  }

  /// 'meets' ('before' | 'after')? dateTimePrecisionSpecifier?
  @override
  dynamic visitMeetsIntervalOperatorPhrase(
      MeetsIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? beforeAfter;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'before' || child.text == 'after') {
          beforeAfter = child.text;
        }
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    if (beforeAfter != null) {
      return Meets(
        precision: dateTimePrecisionSpecifier,
        operand: [],
      );
    }
    throw ArgumentError('$thisNode Invalid MeetsIntervalOperatorPhrase');
  }

  /// referentialIdentifier	# memberInvocation
  @override
  Ref visitMemberInvocation(MemberInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    // print(ctx.text);
    return returnRef(_noQuoteString(ctx.text), null);
  }

  /// expression ('in' | 'contains') dateTimePrecisionSpecifier? expression
  @override
  dynamic visitMembershipExpression(MembershipExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool inContains = true;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        inContains = child.text == 'in' ? true : false;
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (operand.length == 2) {
      if (inContains) {
        return In(operand: operand, precision: dateTimePrecisionSpecifier);
      } else {
        return Contains(
            operand: operand, precision: dateTimePrecisionSpecifier);
      }
    }
    throw ArgumentError('$thisNode Invalid MembershipExpression');
  }

  /// modelIdentifier: identifier;
  @override
  String visitModelIdentifier(ModelIdentifierContext ctx) =>
      _noQuoteString(ctx.text);

  Multiply handleMultiply(CqlExpression left, CqlExpression right) {
    switch (left) {
      case LiteralInteger _:
        {
          if (right is LiteralInteger) {
            return Multiply(operand: [left, right]);
          } else if (right is LiteralLong) {
            return Multiply(operand: [ToLong(operand: left), right]);
          } else if (right is LiteralDecimal) {
            return Multiply(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralLong _:
        {
          if (right is LiteralInteger || right is LiteralLong) {
            return Multiply(operand: [left, ToLong(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Multiply(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralDecimal _:
        {
          if (right is LiteralInteger) {
            return Multiply(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralLong) {
            return Multiply(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Multiply(operand: [left, right]);
          }
        }
        break;
      case LiteralQuantity _:
        {
          if (right is LiteralInteger || right is LiteralLong) {
            return Multiply(operand: [left, ToQuantity(operand: right)]);
          }
          if (right is LiteralDecimal || right is LiteralQuantity) {
            return Multiply(operand: [left, right]);
          }
        }
        break;
      default:
        {
          final leftType = left is ExpressionRef
              ? left.getReturnTypes(library)
              : left.getReturnTypes(library);
          final rightType = right is ExpressionRef
              ? right.getReturnTypes(library)
              : right.getReturnTypes(library);

          if (leftType?.length == 1 && rightType?.length == 1) {
            switch (leftType!.first) {
              case FhirInteger:
                {
                  if (rightType!.first == FhirInteger) {
                    return Multiply(operand: [left, right]);
                  } else if (rightType.first == FhirInteger64) {
                    return Multiply(operand: [ToLong(operand: left), right]);
                  } else if (rightType.first == FhirDecimal) {
                    return Multiply(operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case FhirInteger64:
                {
                  if (rightType!.first == FhirInteger ||
                      right == FhirInteger64) {
                    return Multiply(operand: [left, ToLong(operand: right)]);
                  } else if (rightType.first == FhirDecimal) {
                    return Multiply(operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case FhirDecimal:
                {
                  if (rightType!.first == FhirInteger) {
                    return Multiply(operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first == FhirInteger64) {
                    return Multiply(operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first == FhirDecimal) {
                    return Multiply(operand: [left, right]);
                  }
                }
                break;
              case ValidatedQuantity:
                {
                  if (rightType!.first == FhirInteger ||
                      rightType.first == FhirInteger64) {
                    print('leftType: $leftType rightType: $rightType');
                    return Multiply(operand: [left, ToDecimal(operand: right)]);
                  }
                  if (rightType.first == FhirDecimal ||
                      rightType.first == ValidatedQuantity) {
                    return Multiply(operand: [left, right]);
                  }
                }
                break;
              default:
                break;
            }
          }
          return Multiply(operand: [left, right]);
        }
    }
    throw ArgumentError('Invalid type for multiplication');
  }

  CqlExpression handleDivide(CqlExpression left, CqlExpression right) {
    switch (left) {
      case LiteralInteger _:
        {
          if (right is LiteralInteger || right is LiteralLong) {
            return Divide(
                operand: [ToDecimal(operand: left), ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Divide(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralLong _:
        {
          if (right is LiteralInteger || right is LiteralLong) {
            return Divide(
                operand: [ToDecimal(operand: left), ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Divide(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralDecimal _:
        {
          if (right is LiteralInteger || right is LiteralLong) {
            return Divide(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Divide(operand: [left, right]);
          }
        }
        break;
      case LiteralQuantity _:
        {
          if (right is LiteralDecimal) {
            return Divide(operand: [left, ToQuantity(operand: right)]);
          } else if (right is LiteralQuantity) {
            return Divide(operand: [left, right]);
          }
        }
        break;
      default:
        {
          final leftType = left is ExpressionRef
              ? left.getReturnTypes(library)
              : left.getReturnTypes(library);
          final rightType = right is ExpressionRef
              ? right.getReturnTypes(library)
              : right.getReturnTypes(library);
          if (leftType?.length == 1 && rightType?.length == 1) {
            switch (leftType!.first) {
              case FhirInteger _:
                {
                  if (rightType!.first is FhirInteger ||
                      rightType.first is FhirInteger64) {
                    return Divide(operand: [
                      ToDecimal(operand: left),
                      ToDecimal(operand: right)
                    ]);
                  } else if (rightType.first is FhirDecimal) {
                    return Divide(operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case FhirInteger64 _:
                {
                  if (rightType!.first is FhirInteger ||
                      rightType.first is FhirInteger64) {
                    return Divide(operand: [
                      ToDecimal(operand: left),
                      ToDecimal(operand: right)
                    ]);
                  } else if (rightType.first is FhirDecimal) {
                    return Divide(operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case FhirDecimal _:
                {
                  if (rightType!.first is FhirInteger ||
                      rightType.first is FhirInteger64) {
                    return Divide(operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first is FhirDecimal) {
                    return Divide(operand: [left, right]);
                  }
                }
                break;
              case ValidatedQuantity _:
                {
                  if (rightType!.first is FhirDecimal) {
                    return Divide(operand: [left, ToQuantity(operand: right)]);
                  } else if (rightType.first is ValidatedQuantity) {
                    return Divide(operand: [left, right]);
                  }
                }
                break;
              default:
                break;
            }
          }
          return Divide(operand: [left, right]);
        }
    }
    throw ArgumentError('Invalid type for division');
  }

  TruncatedDivide handleTruncatedDivide(
      CqlExpression left, CqlExpression right) {
    switch (left) {
      case LiteralInteger _:
        {
          if (right is LiteralInteger) {
            return TruncatedDivide(operand: [left, right]);
          } else if (right is LiteralLong) {
            return TruncatedDivide(operand: [ToLong(operand: left), right]);
          } else if (right is LiteralDecimal) {
            return TruncatedDivide(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralLong _:
        {
          if (right is LiteralInteger) {
            return TruncatedDivide(operand: [left, ToLong(operand: right)]);
          } else if (right is LiteralLong) {
            return TruncatedDivide(operand: [left, right]);
          } else if (right is LiteralDecimal) {
            return TruncatedDivide(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralDecimal _:
        {
          if (right is LiteralInteger) {
            return TruncatedDivide(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralLong) {
            return TruncatedDivide(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return TruncatedDivide(operand: [left, right]);
          } else if (right is LiteralQuantity) {
            return TruncatedDivide(operand: [ToQuantity(operand: left), right]);
          }
        }
        break;
      case LiteralQuantity _:
        {
          if (right is LiteralDecimal) {
            return TruncatedDivide(operand: [left, ToQuantity(operand: right)]);
          } else if (right is LiteralQuantity) {
            return TruncatedDivide(operand: [left, right]);
          }
        }
      default:
        {
          final leftType = left is ExpressionRef
              ? left.getReturnTypes(library)
              : left.getReturnTypes(library);
          final rightType = right is ExpressionRef
              ? right.getReturnTypes(library)
              : right.getReturnTypes(library);
          if (leftType?.length == 1 && rightType?.length == 1) {
            switch (leftType!.first) {
              case FhirInteger _:
                {
                  if (rightType!.first is FhirInteger) {
                    return TruncatedDivide(operand: [left, right]);
                  } else if (rightType.first is FhirInteger64) {
                    return TruncatedDivide(
                        operand: [ToLong(operand: left), right]);
                  } else if (rightType.first is FhirDecimal) {
                    return TruncatedDivide(
                        operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case FhirInteger64 _:
                {
                  if (rightType!.first is FhirInteger) {
                    return TruncatedDivide(
                        operand: [left, ToLong(operand: right)]);
                  } else if (rightType.first is FhirInteger64) {
                    return TruncatedDivide(operand: [left, right]);
                  } else if (rightType.first is FhirDecimal) {
                    return TruncatedDivide(
                        operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case FhirDecimal _:
                {
                  if (rightType!.first is FhirInteger) {
                    return TruncatedDivide(
                        operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first is FhirInteger64) {
                    return TruncatedDivide(
                        operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first is FhirDecimal) {
                    return TruncatedDivide(operand: [left, right]);
                  } else if (rightType.first is ValidatedQuantity) {
                    return TruncatedDivide(
                        operand: [ToQuantity(operand: left), right]);
                  }
                }
                break;
              case ValidatedQuantity _:
                {
                  if (rightType!.first is FhirDecimal) {
                    return TruncatedDivide(
                        operand: [left, ToQuantity(operand: right)]);
                  } else if (rightType.first is ValidatedQuantity) {
                    return TruncatedDivide(operand: [left, right]);
                  }
                }
              default:
                break;
            }
          }
          return TruncatedDivide(operand: [left, right]);
        }
    }
    throw ArgumentError('Invalid type for truncated division');
  }

  Modulo handleModulo(CqlExpression left, CqlExpression right) {
    switch (left) {
      case LiteralInteger _:
        {
          if (right is LiteralInteger) {
            return Modulo(operand: [left, right]);
          } else if (right is LiteralLong) {
            return Modulo(operand: [ToLong(operand: left), right]);
          } else if (right is LiteralDecimal) {
            return Modulo(operand: [ToDecimal(operand: left), right]);
          } else if (right is LiteralQuantity) {
            return Modulo(operand: [ToQuantity(operand: left), right]);
          }
        }
        break;
      case LiteralLong _:
        {
          if (right is LiteralInteger) {
            return Modulo(operand: [left, ToLong(operand: right)]);
          } else if (right is LiteralLong) {
            return Modulo(operand: [left, right]);
          } else if (right is LiteralDecimal) {
            return Modulo(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralDecimal _:
        {
          if (right is LiteralInteger) {
            return Modulo(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralLong) {
            return Modulo(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Modulo(operand: [left, right]);
          } else if (right is LiteralQuantity) {
            return Modulo(operand: [ToQuantity(operand: left), right]);
          }
        }
        break;
      case LiteralQuantity _:
        {
          if (right is LiteralInteger) {
            return Modulo(operand: [left, ToQuantity(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Modulo(operand: [left, ToQuantity(operand: right)]);
          } else if (right is LiteralQuantity) {
            return Modulo(operand: [left, right]);
          }
        }
        break;
      default:
        {
          final leftType = left is ExpressionRef
              ? left.getReturnTypes(library)
              : left.getReturnTypes(library);
          final rightType = right is ExpressionRef
              ? right.getReturnTypes(library)
              : right.getReturnTypes(library);
          if (leftType?.length == 1 && rightType?.length == 1) {
            switch (leftType!.first) {
              case FhirInteger _:
                {
                  if (rightType!.first is FhirInteger) {
                    return Modulo(operand: [left, right]);
                  } else if (rightType.first is FhirInteger64) {
                    return Modulo(operand: [ToLong(operand: left), right]);
                  } else if (rightType.first is FhirDecimal) {
                    return Modulo(operand: [ToDecimal(operand: left), right]);
                  } else if (rightType.first is ValidatedQuantity) {
                    return Modulo(operand: [ToQuantity(operand: left), right]);
                  }
                }
                break;
              case FhirInteger64 _:
                {
                  if (rightType!.first is FhirInteger) {
                    return Modulo(operand: [left, ToLong(operand: right)]);
                  } else if (rightType.first is FhirInteger64) {
                    return Modulo(operand: [left, right]);
                  } else if (rightType.first is FhirDecimal) {
                    return Modulo(operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case FhirDecimal _:
                {
                  if (rightType!.first is FhirInteger) {
                    return Modulo(operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first is FhirInteger64) {
                    return Modulo(operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first is FhirDecimal) {
                    return Modulo(operand: [left, right]);
                  } else if (rightType.first is ValidatedQuantity) {
                    return Modulo(operand: [ToQuantity(operand: left), right]);
                  }
                }
                break;
              case ValidatedQuantity _:
                {
                  if (rightType!.first is FhirInteger) {
                    return Modulo(operand: [left, ToQuantity(operand: right)]);
                  } else if (rightType.first is FhirDecimal) {
                    return Modulo(operand: [left, ToQuantity(operand: right)]);
                  } else if (rightType.first is ValidatedQuantity) {
                    return Modulo(operand: [left, right]);
                  }
                }
                break;
              default:
                break;
            }
          }
          return Modulo(operand: [left, right]);
        }
    }
    throw ArgumentError('Invalid type for modulo');
  }

  /// expressionTerm ('*' | '/' | 'div' | 'mod') expressionTerm
  @override
  CqlExpression visitMultiplicationExpressionTerm(
      MultiplicationExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? operator;
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        operator = child.text;
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (operand.length == 2) {
      final left = operand.first;
      final right = operand.last;
      switch (operator) {
        case '*':
          return handleMultiply(left, right);
        case '/':
          return handleDivide(left, right);
        case 'div':
          return handleTruncatedDivide(left, right);
        case 'mod':
          return handleModulo(left, right);
        default:
          throw ArgumentError(
              'Unsupported operator $operator in MultiplicationExpressionTerm');
      }
    }
    throw ArgumentError('$thisNode Invalid MultiplicationExpressionTerm');
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

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Not visitNotExpression(NotExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          return Not(operand: result);
        }
      }
    }
    throw ArgumentError('$thisNode Invalid NotExpression');
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
  LiteralType visitNumberLiteral(NumberLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final text = ctx.getChild(0)!.text!;
    if (int.tryParse(text) != null) {
      return LiteralInteger(value: int.parse(text));
    } else if (double.tryParse(text) != null) {
      return LiteralDecimal.fromString(text);
    } else if (BigInt.tryParse(text) != null) {
      return LiteralLong(value: BigInt.parse(text));
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
    String? referentialIdentifier;
    TypeSpecifierExpression? typeSpecifier;
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

  /// expression ('or' | 'xor') expression # orExpression
  @override
  BinaryExpression visitOrExpression(OrExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool orXor = true;
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        orXor = child.text == 'or' ? true : false;
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (operand.length == 2) {
      CqlExpression left = operand.first;
      CqlExpression right = operand.last;
      if (left is LiteralType && right is LiteralType) {
        if (left is! LiteralNull && right is LiteralNull) {
          return orXor
              ? Or(operand: [
                  left,
                  As(operand: right, asType: QName.fromFull(left.valueType))
                ])
              : Xor(operand: [
                  left,
                  As(operand: right, asType: QName.fromFull(left.valueType))
                ]);
        } else if (left is LiteralNull && right is! LiteralNull) {
          return orXor
              ? Or(operand: [
                  As(operand: left, asType: QName.fromFull(right.valueType)),
                  right,
                ])
              : Xor(operand: [
                  As(operand: left, asType: QName.fromFull(right.valueType)),
                  right,
                ]);
        }
      }
      return orXor ? Or(operand: operand) : Xor(operand: operand);
    }
    throw ArgumentError('$thisNode Invalid OrExpression');
  }

  /// 'overlaps' ('before' | 'after')? dateTimePrecisionSpecifier?
  @override
  CqlExpression visitOverlapsIntervalOperatorPhrase(
      OverlapsIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? beforeAfter;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'before' || child.text == 'after') {
          beforeAfter = child.text;
        }
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    if (beforeAfter != null) {
      return Overlaps(
        precision: dateTimePrecisionSpecifier,
        operand: [],
      );
    }
    throw ArgumentError('$thisNode Invalid OverlapsIntervalOperatorPhrase');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  List<CqlExpression> visitParamList(ParamListContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result is CqlExpression) {
        operand.add(result);
      }
    }
    if (operand.isNotEmpty) {
      return operand;
    }
    throw ArgumentError('$thisNode Invalid ParamList');
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
    TypeSpecifierExpression? typeSpecifier;
    AccessModifier accessLevel = AccessModifier.public;
    CqlExpression? defaultExpression;

    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      } else if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
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

  /// '(' expression ')'
  @override
  dynamic visitParenthesizedTerm(ParenthesizedTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('termExpressioncontext: ${child.runtimeType} ${child.text}');
      if (child is! TerminalNodeImpl) {
        return byContext(child);
      }
    }
    throw ArgumentError('$thisNode Invalid ParenthesizedTerm');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitPluralDateTimePrecision(PluralDateTimePrecisionContext ctx) =>
      _noQuoteString(ctx.text);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPointExtractorExpressionTerm(
      PointExtractorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// ('+' | '-') expressionTerm
  @override
  CqlExpression visitPolarityExpressionTerm(PolarityExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool? isPositive;
    CqlExpression? expressionTerm;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        expressionTerm = byContext(child);
      } else {
        isPositive = child.text == '+';
      }
    }
    if (expressionTerm != null && isPositive != null) {
      if (isPositive) {
        return expressionTerm;
      } else {
        return Negate(operand: expressionTerm);
        // if (expressionTerm is LiteralInteger) {
        //   return LiteralInteger(value: expressionTerm.value * -1);
        // } else if (expressionTerm is LiteralLong) {
        //   return LiteralLong(value: expressionTerm.value * BigInt.from(-1));
        // } else if (expressionTerm is LiteralDecimal) {
        //   return LiteralDecimal(value: expressionTerm.value * -1);
        // } else if (expressionTerm is LiteralQuantity) {
        //   return LiteralQuantity(
        //       value: LiteralDecimal(value: expressionTerm.value.value * -1),
        //       unit: expressionTerm.unit);
        // }
      }
    }
    throw ArgumentError('$thisNode Invalid Polarity Expression');
  }

  /// expressionTerm '^' expressionTerm
  @override
  dynamic visitPowerExpressionTerm(PowerExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? left;
    CqlExpression? right;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        if (left == null) {
          left = byContext(child);
        } else {
          right = byContext(child);
        }
      }
    }
    if (left != null && right != null) {
      if (left is LiteralType && right is LiteralType) {
        switch (left) {
          case LiteralInteger _:
            {
              if (right is LiteralInteger) {
                return Power(operand: [left, right]);
              } else if (right is LiteralLong) {
                return Power(operand: [ToLong(operand: left), right]);
              } else if (right is LiteralDecimal) {
                return Power(operand: [ToDecimal(operand: left), right]);
              }
            }
            break;
          case LiteralLong _:
            {
              if (right is LiteralInteger) {
                return Power(operand: [left, ToLong(operand: right)]);
              } else if (right is LiteralLong) {
                return Power(operand: [left, right]);
              } else if (right is LiteralDecimal) {
                return Power(operand: [ToDecimal(operand: left), right]);
              }
            }
            break;
          case LiteralDecimal _:
            {
              if (right is LiteralInteger || right is LiteralLong) {
                return Power(operand: [left, ToDecimal(operand: right)]);
              } else if (right is LiteralDecimal) {
                return Power(operand: [left, right]);
              }
            }
            break;
          default:
            return Power(operand: [left, right]);
        }
      }
      return Power(operand: [left, right]);
    }
  }

  /// 'predecessor' 'of' expressionTerm
  @override
  Predecessor visitPredecessorExpressionTerm(
      PredecessorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? expressionTerm;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        expressionTerm = byContext(child);
      }
    }
    if (expressionTerm != null) {
      return Predecessor(operand: expressionTerm);
    }
    throw ArgumentError('$thisNode Invalid PredecessorExpressionTerm');
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
      return returnRef(name, libraryName);
    }
    throw ArgumentError('$thisNode Invalid QualifiedIdentifierExpression');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Ref visitQualifiedMemberInvocation(QualifiedMemberInvocationContext ctx) =>
      returnRef(ctx.text, null);

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

  /// quantity: NUMBER unit?;
  @override
  LiteralQuantity visitQuantity(QuantityContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    num? number;
    String? unit;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        number = num.tryParse(child.text!);
      } else if (child is UnitContext) {
        unit = visitUnit(child);
      }
    }
    if (number != null) {
      return LiteralQuantity(value: LiteralDecimal(value: number), unit: unit);
    }

    throw ArgumentError('$thisNode Invalid Quantity');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  LiteralQuantity visitQuantityLiteral(QuantityLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QuantityContext) {
        return visitQuantity(child);
      }
    }
    throw ArgumentError('$thisNode Invalid QuantityLiteral');
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
    CqlExpression? where;
    AggregateClause? aggregateClause;
    ReturnClause? returnClause;
    SortClause? sort;
    for (final child in ctx.children ?? <ParseTree>[]) {
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
    // print('Query:\n'
    //     'source: $source\n'
    //     'let: $let\n'
    //     'relationship: $relationship\n'
    //     'where: $where\n'
    //     'returnClause: $returnClause\n'
    //     'sort: $sort');

    return Query(
      source: source,
      let: let.isEmpty ? null : let,
      relationship: relationship.isEmpty ? null : relationship,
      where: where,
      returnClause: returnClause,
      sort: sort,
      aggregate: aggregateClause,
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
  CqlExpression visitQuerySource(QuerySourceContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('querySource: ${child.runtimeType} ${child.text}');
      if (child is RetrieveContext) {
        return visitRetrieve(child);
      } else if (child is QualifiedIdentifierExpressionContext) {
        return visitQualifiedIdentifierExpression(child);
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
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

  /// referentialIdentifier: identifier | keywordIdentifier;
  @override
  String visitReferentialIdentifier(ReferentialIdentifierContext ctx) {
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

  /// referentialOrTypeNameIdentifier:
  ///	referentialIdentifier
  ///	| typeNameIdentifier;
  @override
  String visitReferentialOrTypeNameIdentifier(
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

  /// 'or before' | 'or after';
  @override
  String visitRelativeQualifier(RelativeQualifierContext ctx) =>
      _noQuoteString(ctx.text);

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
    CqlExpression? context;
    NamedTypeSpecifier? name;
    CqlExpression? codePath;
    String? codeComparator;
    CqlExpression? codes;

    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('retrieve: ${child.runtimeType} ${child.text}');
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

  ///
  @override
  dynamic visitSetAggregateExpressionTerm(
      SetAggregateExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    throw ArgumentError('$thisNode Invalid SetAggregateExpressionTerm');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimpleNumberLiteral(SimpleNumberLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// simplePath '[' simpleLiteral ']'		# simplePathIndexer;
  @override
  Indexer visitSimplePathIndexer(SimplePathIndexerContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? simplePath;
    CqlExpression? simpleLiteral;
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('simplePathIndexer: ${child.runtimeType} ${child.text}');
    }

    throw ArgumentError('$thisNode Invalid SimplePathIndexer');
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
      // print('sourceClause: ${child.runtimeType} ${child.text}');
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

  /// 'starts' dateTimePrecisionSpecifier?
  @override
  Starts visitStartsIntervalOperatorPhrase(
      StartsIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    return Starts(precision: dateTimePrecisionSpecifier, operand: []);
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
      // print('statement: ${child.runtimeType} ${child.text}');
      if (child is ExpressionDefinitionContext) {
        statement = visitExpressionDefinition(child);
      }
      if (child is ContextDefinitionContext) {
        throw ctx.text;
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
  LiteralString visitStringLiteral(StringLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return LiteralString(value: _noQuoteString(ctx.getChild(0)!.text!));
  }

  /// 'successor' 'of' expressionTerm
  @override
  Successor visitSuccessorExpressionTerm(SuccessorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? expressionTerm;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        expressionTerm = byContext(child);
      }
    }
    if (expressionTerm != null) {
      return Successor(operand: expressionTerm);
    }
    throw ArgumentError('$thisNode Invalid SuccessorExpressionTerm');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  String visitTemporalRelationship(TemporalRelationshipContext ctx) =>
      _noQuoteString(ctx.text);

  /// 	expressionTerm	# termExpression
  @override
  dynamic visitTermExpression(TermExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('termExpressioncontext: ${child.runtimeType} ${child.text}');
      if (child is! TerminalNodeImpl) {
        return byContext(child);
      }
    }
    throw ArgumentError('$thisNode Invalid TermExpression');
  }

  /// term:
  ///	invocation				# invocationTerm
  ///	| literal				# literalTerm
  ///	| externalConstant		# externalConstantTerm
  ///	| intervalSelector		# intervalSelectorTerm
  ///	| tupleSelector			# tupleSelectorTerm
  ///	| instanceSelector		# instanceSelectorTerm
  ///	| listSelector			# listSelectorTerm
  ///	| codeSelector			# codeSelectorTerm
  ///	| conceptSelector		# conceptSelectorTerm
  ///	| '(' expression ')'	# parenthesizedTerm;
  @override
  dynamic visitTermExpressionTerm(TermExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('$thisNode termExpressionTerm: ${child.runtimeType} ${child.text}');
      return byContext(child);
    }
    throw ArgumentError('$thisNode Invalid TermExpressionTerm');
  }

  /// terminology: qualifiedIdentifierExpression | expression;
  @override
  CqlExpression visitTerminology(TerminologyContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifiedIdentifierExpressionContext) {
        return visitQualifiedIdentifierExpression(child);
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
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
      final CqlExpression expression = byContext(ctx.children![2]);
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
  LiteralTime visitTimeLiteral(TimeLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    return LiteralTime(
        value: _noQuoteString(
            ctx.text.replaceFirst('@', '').replaceFirst('T', '')));
  }

  /// dateTimeComponent 'from' expressionTerm
  @override
  CqlExpression visitTimeUnitExpressionTerm(TimeUnitExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final String unit =
        visitDateTimeComponent(ctx.children![0] as DateTimeComponentContext);
    final CqlExpression expression = byContext(ctx.children![2]);
    switch (unit) {
      case 'date':
        return DateFrom(operand: expression);
      case 'time':
        return TimeFrom(operand: expression);
      case 'timezoneoffset':
        return TimezoneOffsetFrom(operand: expression);
      case 'year':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.year);
      case 'month':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.month);
      case 'day':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.day);
      case 'hour':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.hour);
      case 'minute':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.minute);
      case 'second':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.second);
      case 'millisecond':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.millisecond);
    }
    throw ArgumentError('$thisNode Invalid TimeUnitExpressionTerm');
  }

  /// expression intervalOperatorPhrase expression # timingExpression
  @override
  CqlExpression visitTimingExpression(TimingExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 3) {
      CqlExpression left =
          visitTermExpression(ctx.children![0] as TermExpressionContext);
      CqlExpression right =
          visitTermExpression(ctx.children![2] as TermExpressionContext);
      CqlExpression? result;
      final intervalOperatorPhrase = ctx.children![1];
      switch (intervalOperatorPhrase) {
        case ConcurrentWithIntervalOperatorPhraseContext _:
          result =
              visitConcurrentWithIntervalOperatorPhrase(intervalOperatorPhrase);
          break;
        case IncludesIntervalOperatorPhraseContext _:
          result = visitIncludesIntervalOperatorPhrase(intervalOperatorPhrase);
          break;
        case IncludedInIntervalOperatorPhraseContext _:
          result =
              visitIncludedInIntervalOperatorPhrase(intervalOperatorPhrase);
          break;
        case BeforeOrAfterIntervalOperatorPhraseContext _:
          return visitBeforeOrAfterIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
        case WithinIntervalOperatorPhraseContext _:
          result = visitWithinIntervalOperatorPhrase(intervalOperatorPhrase);
          break;
        case MeetsIntervalOperatorPhraseContext _:
          result = visitMeetsIntervalOperatorPhrase(intervalOperatorPhrase);
          break;
        case OverlapsIntervalOperatorPhraseContext _:
          result = visitOverlapsIntervalOperatorPhrase(intervalOperatorPhrase);
          break;
        case StartsIntervalOperatorPhraseContext _:
          result = visitStartsIntervalOperatorPhrase(intervalOperatorPhrase);
          break;
        case EndsIntervalOperatorPhraseContext _:
          result = visitEndsIntervalOperatorPhrase(intervalOperatorPhrase);
          break;
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
  TupleElementDefinition visitTupleElementDefinition(
      TupleElementDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    TypeSpecifierExpression? typeSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }
    if (name != null && typeSpecifier != null) {
      return TupleElementDefinition(elementType: typeSpecifier, name: name);
    } else {
      throw ArgumentError('$thisNode Invalid TupleElementDefinition');
    }
  }

  /// referentialIdentifier ':' expression;
  @override
  TupleElement visitTupleElementSelector(TupleElementSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? referentialIdentifier;
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        referentialIdentifier = visitReferentialIdentifier(child);
      } else if (child is! TerminalNodeImpl) {
        // print('$thisNode child: ${child.runtimeType} ${child.text}');
        expression = byContext(child);
      }
    }
    // print('$thisNode: referentialIdentifier: $referentialIdentifier');
    // print('$thisNode: expression: $expression');
    if (referentialIdentifier != null && expression != null) {
      return TupleElement(
        name: referentialIdentifier,
        value: expression,
      );
    }
    throw ArgumentError('$thisNode Invalid TupleElementSelector');
  }

  /// tupleSelector:
  ///	'Tuple'? '{' (
  ///		':'
  ///		| (tupleElementSelector (',' tupleElementSelector)*)
  ///	) '}';
  @override
  Tuple visitTupleSelector(TupleSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final List<TupleElement> elements = <TupleElement>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TupleElementSelectorContext) {
        elements.add(visitTupleElementSelector(child));
      }
    }
    return Tuple(element: elements);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleSelectorTerm(TupleSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TupleSelectorContext) {
        return visitTupleSelector(child);
      }
    }

    throw ArgumentError('$thisNode Invalid TupleSelectorTerm');
  }

  /// tupleTypeSpecifier:
  /// 'Tuple' '{' tupleElementDefinition (
  /// 	',' tupleElementDefinition
  /// )* '}';
  @override
  TupleTypeSpecifier visitTupleTypeSpecifier(TupleTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    List<TupleElementDefinition> element = <TupleElementDefinition>[];
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

  /// ('minimum' | 'maximum') namedTypeSpecifier
  @override
  dynamic visitTypeExtentExpressionTerm(TypeExtentExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final NamedTypeSpecifier? namedTypeSpecifier =
        visitNamedTypeSpecifier(ctx.children![1] as NamedTypeSpecifierContext);
    if (namedTypeSpecifier != null) {
      if (ctx.children![0].text == 'minimum') {
        return MinValue(valueType: namedTypeSpecifier.namespace);
      } else if (ctx.children![0].text == 'maximum') {
        return MaxValue(valueType: namedTypeSpecifier.namespace);
      }
    }
    throw ArgumentError('$thisNode Invalid TypeExtentExpressionTerm');
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
  TypeSpecifierExpression? visitTypeSpecifier(TypeSpecifierContext ctx) {
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
  CqlExpression visitWhereClause(WhereClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
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
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.getChild(1) is AliasedQuerySourceContext) {
      // print(
      //     'withClause: ${ctx.getChild(1).runtimeType} ${ctx.getChild(1)?.text}');
      final RelationshipClause source =
          visitAliasedQuerySource(ctx.getChild(1) as AliasedQuerySourceContext);
      final suchThat =
          ctx.getChild(3) == null ? null : byContext(ctx.getChild(3)!);
      return With(
          alias: source.alias,
          expression: source.expression,
          suchThat: suchThat is CqlExpression ? suchThat : null);
    }
    throw ArgumentError('$thisNode Invalid WithClause');
  }

  /// ('starts' | 'ends' | 'occurs')? 'properly'? 'within' quantity 'of' (
  ///	'start'
  ///	| 'end'
  /// )?
  @override
  CqlExpression visitWithinIntervalOperatorPhrase(
      WithinIntervalOperatorPhraseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final CqlExpression quantity = byContext(ctx.children![2]);
    final String? startOrEnd = ctx.children!.length == 6
        ? _noQuoteString(ctx.children![5].text!)
        : null;
    if (ctx.children![0].text == 'starts') {
      return Contains(operand: [quantity]);
    } else if (ctx.children![0].text == 'ends') {
      return Contains(operand: [quantity]);
    } else if (ctx.children![0].text == 'occurs') {
      return Contains(operand: [quantity]);
    }
    throw ArgumentError('$thisNode Invalid WithinIntervalOperatorPhrase');
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  Without visitWithoutClause(WithoutClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.getChild(1) is AliasedQuerySourceContext) {
      // print(
      //     'withoutClause: ${ctx.getChild(1).runtimeType} ${ctx.getChild(1)?.text}');
      final RelationshipClause source =
          visitAliasedQuerySource(ctx.getChild(1) as AliasedQuerySourceContext);
      final suchThat =
          ctx.getChild(3) == null ? null : byContext(ctx.getChild(3)!);
      return Without(
          alias: source.alias,
          expression: source.expression,
          suchThat: suchThat is CqlExpression ? suchThat : null);
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

  Ref returnRef(String name, String? libraryName) {
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
