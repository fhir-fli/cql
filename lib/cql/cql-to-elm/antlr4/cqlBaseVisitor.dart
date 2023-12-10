// Generated from cql.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';
import 'package:cql/cql/cql-to-elm/elm/elm.dart';

import 'cqlParser.dart';
import 'cqlVisitor.dart';

/// This class provides an empty implementation of [cqlVisitor],
/// which can be extended to create a visitor which only needs to handle
/// a subset of the available methods.
///
/// [T] is the print(ctx.runtimeType); return type of the visit operation. Use `void` for
/// operations with no print(ctx.runtimeType); return type.
class cqlBaseVisitor<T> extends ParseTreeVisitor<T> implements cqlVisitor<T> {
  Library library = Library();

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  void visitLibrary(LibraryContext ctx) => visitChildren(ctx);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDefinition(DefinitionContext ctx) {
//  {'definition': visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLibraryDefinition(LibraryDefinitionContext ctx) {
    if (library.identifier == null) {
      library.identifier = VersionedIdentifier();
    }
    library.identifier!.id = ctx.text;
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitUsingDefinition(UsingDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIncludeDefinition(IncludeDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLocalIdentifier(LocalIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAccessModifier(AccessModifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitParameterDefinition(ParameterDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodesystemDefinition(CodesystemDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitValuesetDefinition(ValuesetDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodesystems(CodesystemsContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodesystemIdentifier(CodesystemIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLibraryIdentifier(LibraryIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeDefinition(CodeDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConceptDefinition(ConceptDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeIdentifier(CodeIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodesystemId(CodesystemIdContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitValuesetId(ValuesetIdContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitVersionSpecifier(VersionSpecifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeId(CodeIdContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTypeSpecifier(TypeSpecifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitNamedTypeSpecifier(NamedTypeSpecifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitModelIdentifier(ModelIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitListTypeSpecifier(ListTypeSpecifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIntervalTypeSpecifier(IntervalTypeSpecifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleTypeSpecifier(TupleTypeSpecifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleElementDefinition(TupleElementDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitChoiceTypeSpecifier(ChoiceTypeSpecifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStatement(StatementContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExpressionDefinition(ExpressionDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitContextDefinition(ContextDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunctionDefinition(FunctionDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOperandDefinition(OperandDefinitionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunctionBody(FunctionBodyContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuerySource(QuerySourceContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAliasedQuerySource(AliasedQuerySourceContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAlias(AliasContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQueryInclusionClause(QueryInclusionClauseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWithClause(WithClauseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWithoutClause(WithoutClauseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRetrieve(RetrieveContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitContextIdentifier(ContextIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodePath(CodePathContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeComparator(CodeComparatorContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTerminology(TerminologyContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifier(QualifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuery(QueryContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSourceClause(SourceClauseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLetClause(LetClauseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLetClauseItem(LetClauseItemContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWhereClause(WhereClauseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReturnClause(ReturnClauseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAggregateClause(AggregateClauseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStartingClause(StartingClauseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSortClause(SortClauseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSortDirection(SortDirectionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSortByItem(SortByItemContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedIdentifier(QualifiedIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedIdentifierExpression(
      QualifiedIdentifierExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifierExpression(QualifierExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimplePathIndexer(SimplePathIndexerContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimplePathQualifiedIdentifier(
      SimplePathQualifiedIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimplePathReferentialIdentifier(
      SimplePathReferentialIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimpleStringLiteral(SimpleStringLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSimpleNumberLiteral(SimpleNumberLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDurationBetweenExpression(DurationBetweenExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInFixSetExpression(InFixSetExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRetrieveExpression(RetrieveExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimingExpression(TimingExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQueryExpression(QueryExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitNotExpression(NotExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBooleanExpression(BooleanExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOrExpression(OrExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCastExpression(CastExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAndExpression(AndExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBetweenExpression(BetweenExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMembershipExpression(MembershipExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDifferenceBetweenExpression(
      DifferenceBetweenExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInequalityExpression(InequalityExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitEqualityExpression(EqualityExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExistenceExpression(ExistenceExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitImpliesExpression(ImpliesExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTermExpression(TermExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTypeExpression(TypeExpressionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimePrecision(DateTimePrecisionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimeComponent(DateTimeComponentContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPluralDateTimePrecision(PluralDateTimePrecisionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAdditionExpressionTerm(AdditionExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIndexedExpressionTerm(IndexedExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWidthExpressionTerm(WidthExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSetAggregateExpressionTerm(
      SetAggregateExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimeUnitExpressionTerm(TimeUnitExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIfThenElseExpressionTerm(IfThenElseExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimeBoundaryExpressionTerm(
      TimeBoundaryExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitElementExtractorExpressionTerm(
      ElementExtractorExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConversionExpressionTerm(ConversionExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTypeExtentExpressionTerm(TypeExtentExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPredecessorExpressionTerm(PredecessorExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPointExtractorExpressionTerm(
      PointExtractorExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMultiplicationExpressionTerm(
      MultiplicationExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitAggregateExpressionTerm(AggregateExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDurationExpressionTerm(DurationExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDifferenceExpressionTerm(DifferenceExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCaseExpressionTerm(CaseExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPowerExpressionTerm(PowerExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitSuccessorExpressionTerm(SuccessorExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitPolarityExpressionTerm(PolarityExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTermExpressionTerm(TermExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInvocationExpressionTerm(InvocationExpressionTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCaseExpressionItem(CaseExpressionItemContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimePrecisionSpecifier(
      DateTimePrecisionSpecifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRelativeQualifier(RelativeQualifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOffsetRelativeQualifier(OffsetRelativeQualifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExclusiveRelativeQualifier(
      ExclusiveRelativeQualifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuantityOffset(QuantityOffsetContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTemporalRelationship(TemporalRelationshipContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConcurrentWithIntervalOperatorPhrase(
      ConcurrentWithIntervalOperatorPhraseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIncludesIntervalOperatorPhrase(
      IncludesIntervalOperatorPhraseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIncludedInIntervalOperatorPhrase(
      IncludedInIntervalOperatorPhraseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBeforeOrAfterIntervalOperatorPhrase(
      BeforeOrAfterIntervalOperatorPhraseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitWithinIntervalOperatorPhrase(
      WithinIntervalOperatorPhraseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMeetsIntervalOperatorPhrase(
      MeetsIntervalOperatorPhraseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitOverlapsIntervalOperatorPhrase(
      OverlapsIntervalOperatorPhraseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStartsIntervalOperatorPhrase(
      StartsIntervalOperatorPhraseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitEndsIntervalOperatorPhrase(
      EndsIntervalOperatorPhraseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInvocationTerm(InvocationTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLiteralTerm(LiteralTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExternalConstantTerm(ExternalConstantTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIntervalSelectorTerm(IntervalSelectorTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleSelectorTerm(TupleSelectorTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInstanceSelectorTerm(InstanceSelectorTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitListSelectorTerm(ListSelectorTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeSelectorTerm(CodeSelectorTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConceptSelectorTerm(ConceptSelectorTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitParenthesizedTerm(ParenthesizedTermContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedMemberInvocation(QualifiedMemberInvocationContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedFunctionInvocation(
      QualifiedFunctionInvocationContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQualifiedFunction(QualifiedFunctionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitMemberInvocation(MemberInvocationContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunctionInvocation(FunctionInvocationContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitThisInvocation(ThisInvocationContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIndexInvocation(IndexInvocationContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTotalInvocation(TotalInvocationContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunction(FunctionContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRatio(RatioContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitBooleanLiteral(BooleanLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitNullLiteral(NullLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitStringLiteral(StringLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitNumberLiteral(NumberLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLongNumberLiteral(LongNumberLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateTimeLiteral(DateTimeLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDateLiteral(DateLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTimeLiteral(TimeLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuantityLiteral(QuantityLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitRatioLiteral(RatioLiteralContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIntervalSelector(IntervalSelectorContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleSelector(TupleSelectorContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTupleElementSelector(TupleElementSelectorContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInstanceSelector(InstanceSelectorContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitInstanceElementSelector(InstanceElementSelectorContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitListSelector(ListSelectorContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitDisplayClause(DisplayClauseContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitCodeSelector(CodeSelectorContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitConceptSelector(ConceptSelectorContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitKeyword(KeywordContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReservedWord(ReservedWordContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitKeywordIdentifier(KeywordIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitObsoleteIdentifier(ObsoleteIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitFunctionIdentifier(FunctionIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitTypeNameIdentifier(TypeNameIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReferentialIdentifier(ReferentialIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitReferentialOrTypeNameIdentifier(
      ReferentialOrTypeNameIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIdentifierOrFunctionIdentifier(
      IdentifierOrFunctionIdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIdentifier(IdentifierContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');

    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitExternalConstant(ExternalConstantContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitParamList(ParamListContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitQuantity(QuantityContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitUnit(UnitContext ctx) {
    print('${ctx.runtimeType.toString()}   ${ctx.text}');
//  {ctx.runtimeType.toString(): visitChildren(ctx)};
    print(ctx.runtimeType);
    return {ctx.runtimeType.toString(): ctx.runtimeType.toString()};
  }
}
